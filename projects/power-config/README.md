# Power Config

pwr-config.sh is a script utility I made to swap between custom power settings I made for my dev machine. Whvia en at home my laptop is mounted in a computer mount that attaches to the underside of my desk and so I'm unable to open the lid and power the machine on and off. So I customized my power settings on my machine by editing logind and systemd to prevent the machine from sleeping/hibernating so it's always accessible. Then when I take the laptop on the road I can disable those overrides in order to use the laptop normally and preserve batter life.

## HOME

The home profile is pretty simple we uncomment the following settings and adjust them to the following values via an systemd override config:

/logind.conf.d/docked.conf:

HandleHibernateKey=ignore
HandleLidSwitch=ignore
HandleLidSwitchExternalPower=ignore
HandleLidSwitchDocked=ignore
HibernateKeyIgnoreInhibited=no

These prevent the computer from sleeping when the lid is closed or switched. Or hibernating when a key is pressed.

/sleep.conf.d/no-hibernate.conf

AllowSuspend=no
AllowHibernation=no
AllowSuspendThenHibernate=no
AllowHybridSleep=no
HibernateOnACPower=no

these block the actual changes to the system power state preventing the machine from suspending, hibernating, suspending then hibernating, and hibernating while plugged in.

The script will back up these settings by copying the config override to a local user folder. This script requires the user to have root priveleges.

The script will first check the current power state, in this case home when docked, and travel when using power defaults.

the power config script has been configured to the path so it can be called directly and expects one argument with up to 3 possible values: "home" to switch the config to home power settings, "travel" to backup configs and load system default power settings, and status to verify which mode the system is in.

status looks specifically for the overrides as I named them and does not mean that the power state is set to home or travel explicitly. It assumes that if the power overrides are present that the machine is in home state. Any other result will yield travel as travel is currently system default power settings. If I override power settings later I will likely revise this to be more accurate.
