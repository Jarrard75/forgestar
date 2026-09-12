#!/usr/bin/env bash
set -euo pipefail

if [[ $EUID -eq 0 ]]; then
    echo "Terminating as this script does not support running as root."
    exit 1
fi

BASE="$HOME/power-profiles"
HOME_PROFILE="$BASE/home"
TRAVEL_PROFILE="$BASE/travel"
HOME_MASKS="$HOME_PROFILE/systemd/masks"
TRAVEL_MASKS="$TRAVEL_PROFILE/systemd/masks"

SYSTEM_SLEEP_DIR="/etc/systemd/sleep.conf.d"
SYSTEM_LOGIND_DIR="/etc/systemd/logind.conf.d"

backup_conf() {
    local target="$1"

    mkdir -p "$target/sleep.conf.d" "$target/logind.conf.d"

    sudo rm -f "$target"/sleep.conf.d/*.conf 2>/dev/null || true
    sudo rm -f "$target"/logind.conf.d/*.conf 2>/dev/null || true

    if compgen -G "$SYSTEM_SLEEP_DIR/*.conf" >/dev/null; then
        sudo cp -a "$SYSTEM_SLEEP_DIR/"*.conf "$target/sleep.conf.d/"
    fi

    if compgen -G "$SYSTEM_LOGIND_DIR/*.conf" > /dev/null; then
        sudo cp -a "$SYSTEM_LOGIND_DIR/"*.conf "$target/logind.conf.d/"
    fi

    sudo chown -R "$USER:$(id -gn "$USER")" "$target"
}

clear_current_overrides() {
    sudo mkdir -p "$SYSTEM_SLEEP_DIR" "$SYSTEM_LOGIND_DIR"
    sudo rm -f "$SYSTEM_SLEEP_DIR/"*.conf 2>/dev/null || true
    sudo rm -f "$SYSTEM_LOGIND_DIR/"*.conf 2>/dev/null || true
}

push_profile_live() {
    local source="$1"

    if compgen -G "$source/sleep.conf.d/*.conf" > /dev/null; then
        sudo install -o root -g root -m 644 \
            "$source/sleep.conf.d/"*.conf \
            "$SYSTEM_SLEEP_DIR/"
    fi

    if compgen -G "$source/logind.conf.d/*.conf" > /dev/null; then
        sudo install -o root -g root -m 644 \
            "$source/logind.conf.d/"*.conf \
            "$SYSTEM_LOGIND_DIR/"
    fi
}

unmask() {

    local mask_file="$1"
    local unit
    local managed_units=(
        suspend.target
        hibernate.target
        hybrid-sleep.target
        suspend-then-hibernate.target
    )

    : > "$mask_file"

    for unit in "${managed_units[@]}"; do
        if [[ "$(systemctl is-enabled "$unit" 2>/dev/null || true)" == "masked" ]]; then
            printf "%s\n" "$unit" >> "$mask_file"
            sudo systemctl unmask "$unit"
        fi
    done
}

mask() {
    local file="$1"
    local unit

    [[ -f "$file" ]] || return 0

    while IFS= read -r unit; do
        [[ -z "$unit" || "$unit" =~ ^# ]] && continue
        sudo systemctl mask "$unit"
    done < "$file"
}

is_home() {
    cmp -s \
        "$HOME_PROFILE/logind.conf.d/docked.conf" \
        "$SYSTEM_LOGIND_DIR/docked.conf" \
        && cmp -s \
        "$HOME_PROFILE/sleep.conf.d/no-hibernate.conf" \
        "$SYSTEM_SLEEP_DIR/no-hibernate.conf"
}

[[ $# -eq 1 ]] || { echo "Usage: $0 {home|travel|status}"; exit 1; }

case "$1" in 
    home)
        if is_home; then
            echo "Power Profile is already set to HOME. No changes will be made. Terminating..."
            exit 0
        fi

        backup_conf "$TRAVEL_PROFILE"
        clear_current_overrides
        push_profile_live "$HOME_PROFILE"
        unmask "$TRAVEL_MASKS"
        mask "$HOME_MASKS"
        ;;
    travel)
        if ! is_home; then
            echo "Power Profile is already set to TRAVEL. No changes will be made. Terminating..."
            exit 0
        fi

        backup_conf "$HOME_PROFILE"
        clear_current_overrides
        push_profile_live "$TRAVEL_PROFILE"
        unmask "$HOME_MASKS"
        mask "$TRAVEL_MASKS"
        ;;
    status)
        if is_home; then
            echo "Power Profile: HOME"
        else
            echo "Power Profile: TRAVEL"
        fi
        exit 0
        ;;
    *)
        echo "Usage: $0 {home|travel|status}"
        exit 1
        ;;
esac


sudo systemctl daemon-reload

echo "Power settings reconfigured. Restarting in 5s... Press Ctrl+C to cancel."
sleep 5
sudo reboot
