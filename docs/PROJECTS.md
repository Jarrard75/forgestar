# PROJECTS

# Forgestar Project Roadmap

Forgestar is a project-driven technical curriculum built around practical utilities, systems projects, infrastructure work, and game development.

This file is intentionally lightweight.

Its purpose is to answer:

> **What should I build?**

Not:

> **How should I build it?**

Detailed requirements, architecture, implementation notes, APIs, directory structures, and design decisions belong in each active project’s own `README.md`.

## Project Rules

* Planned projects remain lightweight until they become active.
* Only the next project in the queue should receive detailed planning.
* Every project should produce a working result before major expansion.
* Learning-critical structures and algorithms should be implemented directly where reasonable.
* Established libraries should be used where safety or correctness requires them, especially for production cryptography.
* General-purpose tools should not be extracted until at least two projects demonstrate a real need for them.
* Future ideas are not commitments.

## Status Definitions

| Status   | Meaning                                              |
| -------- | ---------------------------------------------------- |
| Complete | Finished and usable                                  |
| Active   | Currently being developed                            |
| Next     | Intended to begin after the active project           |
| Planned  | Worth building, but not yet scheduled                |
| Future   | Long-horizon or advanced project                     |
| Ongoing  | Infrastructure work without a fixed completion point |

## Current Queue

1. Text Calculator
2. Password Generator
3. Portfolio Website
4. Homelab Weather App
5. Encrypted Keychain
6. Small Game
7. Homelab Dashboard
8. Mini Version Control System
9. Minimal Game Engine

Home Network Modernization is tracked separately as an ongoing infrastructure project and may move forward based on real-world needs.

---

# Completed Projects

## Power Profile Utility

**Status:** Complete

### Purpose

Provide a reliable command-line utility for switching an Arch Linux laptop between home and travel power configurations.

### MVP

* Apply the home profile
* Apply the travel profile
* Preserve required configuration state
* Safely manage relevant systemd configuration
* Report the active configuration

### Technologies

* Bash
* systemd
* Arch Linux
* Linux configuration files

### Learning Goals

* Shell scripting
* System configuration
* Idempotent operations
* Privilege handling
* Backup and restoration
* Defensive scripting

### Future Ideas

* Additional profiles
* Automated profile detection
* Installation and removal helpers
* Broader hardware support

---

# Active Learning Queue

## Text Calculator

**Status:** Next

### Purpose

Build a calculator in C that parses mathematical expressions from text and evaluates them using directly implemented data structures, parsing logic, numeric representations, and arithmetic algorithms.

The calculator will serve as the primary C learning project and a practical environment for studying data structures, algorithms, memory management, parsing, and performance.

### MVP

* Accept a basic text expression
* Parse numeric values and operators
* Perform basic arithmetic
* Return the result
* Detect invalid input
* Detect unsupported or overflowing values
* Provide clear error messages

The first version only needs to support a small, well-defined expression set.

### Technologies

* C
* C standard library
* Command-line interface
* Build and debugging tools

### Learning Goals

* Strings and character processing
* Pointers and memory ownership
* Arrays and dynamic storage
* Structs and enums
* Numeric parsing
* Overflow detection
* Tokenization
* Expression parsing
* Operator precedence
* Stacks, queues, or trees
* Recursion
* Searching and sorting
* Algorithmic complexity
* Arbitrary-precision integer representation
* Performance measurement
* Testing and debugging

### Future Ideas

* Parentheses and unary operators
* Full operator precedence
* Dynamic token storage
* Expression trees
* Native numeric type selection
* Arbitrary-precision integers
* Multiple arithmetic algorithms
* Algorithm selection based on operand size
* Batch processing from expression files
* Known-answer test corpora
* Input and output token diagnostics
* Parsing and execution timing
* Benchmark datasets
* Generated expressions
* Fuzz testing
* Variables and stored values
* Interactive REPL mode
* Binary and hexadecimal input
* Rational or arbitrary-precision decimal support
* Built-in mathematical functions

---

## Password Generator

**Status:** Planned

### Purpose

Build a command-line password generator that creates passwords according to user-defined rules while reinforcing secure randomness, string handling, buffers, validation, and testing.

### MVP

* Generate a password of a requested length
* Support selectable character groups
* Validate requested options
* Use an appropriate source of randomness
* Print the generated password
* Fail safely when input is invalid

### Technologies

* C
* Command-line interface
* Operating-system randomness facilities

### Learning Goals

* Random number generation
* Secure randomness
* Character arrays
* Buffer management
* Input validation
* Command-line arguments
* Modular program structure
* Testing edge cases

### Future Ideas

* Multiple generated passwords
* Passphrase generation
* Custom character sets
* Excluded characters
* Strength estimation
* Entropy reporting
* Configuration files
* Integration with the encrypted keychain

---

# Security and Developer Tooling

## Encrypted Keychain

**Status:** Planned

### Purpose

Build a local encrypted credential store that supports creating, retrieving, updating, and deleting stored secrets through a master password.

The project should provide hands-on exposure to hashing, salting, password-derived keys, encryption, decryption, file formats, and secure handling of sensitive data.

### MVP

* Create a new encrypted keychain
* Unlock it with a master password
* Add a credential
* Retrieve a credential
* Update or remove a credential
* Save the encrypted data locally
* Reject an incorrect master password

### Technologies

* C or C++
* Established cryptographic library
* Local file storage
* Command-line interface

### Learning Goals

* Hashing and salts
* Password-based key derivation
* Encryption and decryption
* Authenticated encryption
* Binary file formats
* Secure memory handling
* File permissions
* Threat modeling
* Security boundaries

### Future Ideas

* Password generator integration
* Search and tagging
* Clipboard integration
* Automatic clipboard clearing
* Import and export
* Multiple keychains
* Key rotation
* Recovery procedures
* Graphical interface

---

## Mini Version Control System

**Status:** Future

### Purpose

Build a simplified version-control system inspired by Git to understand how repositories, snapshots, content hashing, commits, history, and branches work internally.

The goal is educational understanding rather than compatibility with or replacement of Git.

### MVP

* Initialize a repository
* Track files
* Create a snapshot
* Store snapshot metadata
* List project history
* Restore a previous snapshot

### Technologies

* C or C++
* Filesystem operations
* Content hashing
* Command-line interface

### Learning Goals

* Filesystem traversal
* File metadata
* Content-addressed storage
* Hashing
* Serialization
* Trees and graphs
* Diffs
* Repository state
* Command dispatch
* Error recovery

### Future Ideas

* Branches
* Tags
* Merging
* Text diffs
* Ignore rules
* Repository validation
* Compression
* Remote synchronization

---

# Web and Homelab

## Portfolio Website

**Status:** Planned

### Purpose

Create a public website that presents professional experience, technical interests, completed projects, and ongoing learning work.

### MVP

* Home page
* About section
* Project listings
* Contact information
* Responsive layout
* Public deployment

### Technologies

* HTML
* CSS
* JavaScript or a lightweight web framework
* Static hosting or self-hosting

### Learning Goals

* Semantic HTML
* Responsive design
* Accessibility
* Web styling
* Basic frontend behavior
* Deployment
* Project presentation
* Technical writing

### Future Ideas

* Project detail pages
* Writing or development journal
* Automated project data from Forgestar
* Dark and light themes
* Self-hosting
* Custom domain
* Build and deployment automation

---

## Homelab Weather App

**Status:** Planned

### Purpose

Build and self-host a weather application that retrieves, processes, and displays useful local weather information through the homelab.

### MVP

* Retrieve weather data from an external source
* Display current local conditions
* Display a short forecast
* Handle unavailable or invalid data
* Run as a service on the home server

### Technologies

* Web frontend
* Backend service
* External weather API
* Containers or homelab deployment tools
* Unraid

### Learning Goals

* API integration
* JSON processing
* Backend and frontend communication
* Error handling
* Caching
* Configuration management
* Containerization
* Self-hosted deployment
* Logging

### Future Ideas

* Multiple locations
* Historical weather data
* Severe-weather alerts
* Local sensor integration
* Charts and trends
* Home dashboard integration
* Scheduled data collection
* Offline fallback data

---

## Homelab Dashboard

**Status:** Planned

### Purpose

Create a centralized frontend for viewing, monitoring, and accessing services hosted on the home server.

### MVP

* Display available homelab services
* Provide links to service interfaces
* Show basic service availability
* Run locally on the home network
* Use a maintainable configuration format

### Technologies

* Web frontend
* Backend service
* Unraid
* Containers
* Service-health endpoints

### Learning Goals

* Service discovery
* Health checks
* Configuration-driven interfaces
* Backend aggregation
* Authentication concepts
* Homelab deployment
* Monitoring
* Secure local access

### Future Ideas

* Weather app integration
* Resource metrics
* Storage usage
* Container status
* Service start and stop controls
* User authentication
* Remote access
* Notifications
* Custom widgets


## Personal Project Management Dashboard

**Status:** Planned

### Purpose

Build a self-hosted project-management application for organizing personal software projects and tracking work through tasks, user stories, tickets, issues, and defects.

The dashboard should eventually support other Forgestar projects, but its development should not block work on those projects.

### MVP

* Create and manage projects
* Create, edit, and close work items
* Assign a work-item type
* Assign status and priority
* Add descriptions and acceptance criteria
* Filter and search work items
* Persist project and work-item data
* Display active and completed work

The first version should support a single user and a simple workflow.

### Technologies

* Web frontend
* Backend service
* Database
* Self-hosted deployment
* Unraid or another local hosting environment

### Learning Goals

* Full-stack application development
* CRUD operations
* Data modeling
* Relational data
* Application state
* Form handling and validation
* Search and filtering
* API design
* Database migrations
* Testing
* Deployment
* Project-management workflows

### Future Ideas

* Kanban boards
* Backlogs and sprints
* Epics and milestones
* Work-item relationships
* Dependencies and blockers
* Labels and tags
* Comments and activity history
* Attachments
* Time tracking
* Estimates and velocity
* Dashboards and reports
* Notifications
* Multiple users and permissions
* GitHub integration
* Links to Forgestar project documentation
* Public and private projects
* Mobile-friendly interface

---

# Infrastructure

## Home Network Modernization

**Status:** Ongoing

### Purpose

Design and implement a maintainable home network with deliberate address allocation, documented services, appropriate segmentation, controlled hardware, and a clear understanding of network traffic.

### MVP

* Document the current network
* Define address ranges
* Reserve addresses for infrastructure
* Select appropriate network hardware
* Establish a reproducible configuration
* Document recovery and reset procedures

### Technologies

* Routing
* Switching
* DHCP
* DNS
* Firewalls
* VLANs
* Wireless networking
* Network monitoring

### Learning Goals

* IP addressing and subnetting
* DHCP and static reservations
* DNS
* Network segmentation
* Firewall rules
* Routing
* Wireless network design
* Hardware selection
* Configuration backup
* Network troubleshooting

### Future Ideas

* Dedicated router or firewall appliance
* Managed switches
* VLAN-separated device groups
* Guest and IoT networks
* Local DNS
* Network-wide monitoring
* Intrusion detection
* Configuration automation
* Redundant services

---

# Game Development

## Small Game

**Status:** Planned

### Purpose

Complete and release a small game using an existing engine or framework in order to experience the entire game-development lifecycle.

The project should be deliberately limited in scope and centered on one clear gameplay concept.

### MVP

* One core gameplay loop
* Player input
* Win, loss, or completion state
* Basic user interface
* Audio
* Saving where necessary
* Packaged playable build

### Technologies

* C++
* Existing game engine or framework
* Asset and build tools

### Learning Goals

* C++ fundamentals
* Game loops
* State management
* Input
* Rendering
* Collision
* Audio
* User interfaces
* Asset management
* Packaging
* Scope control
* Finishing a project

### Future Ideas

* Additional levels
* Improved art and audio
* Expanded mechanics
* Mod support
* Level editor
* Multiplayer experiments
* Release on a public storefront

---

## Minimal Game Engine

**Status:** Future

### Purpose

Build a minimal game engine or framework capable of supporting one small game.

The goal is to understand the systems beneath existing engines, not to compete with large commercial engines.

### MVP

* Create a window
* Process input
* Run a stable game loop
* Render basic 2D content
* Load a small set of assets
* Support basic collision
* Run one simple game

### Technologies

* C++
* Graphics API or multimedia library
* Build tooling
* Platform APIs where necessary

### Learning Goals

* Engine architecture
* Rendering
* Frame timing
* Input systems
* Asset management
* Memory ownership
* Collision detection
* Debugging tools
* Platform abstraction
* Performance profiling

### Future Ideas

* Scene management
* Entity-component systems
* Animation
* Audio
* Scripting
* Level tools
* Resource hot reloading
* Physics
* 3D rendering
* Editor interface
* Cross-platform builds

---

# Unscheduled Ideas

Use this section only to capture ideas that are not developed enough to become projects.

Ideas should remain one-line entries until they have a clear purpose and MVP.

* None currently

