# Waypoints

**Version: 0.7.4**

A lightweight CLI for saving and jumping between directories.

## Quick Start
Add waypoint: \
`wp add ~/path/to/your/favorite/directory my-favorite-dir`

Navigate to waypoint: \
`wp my-favorite-dir`

See all your waypoints: \
`wp list`

Navigate back to `~`: \
`wp home`

## Core Commands
### Navigation:

  `wp <name>`: Jump to waypoint \
  `wp home`: Go to `~`

### Manage waypoints:

  `wp add <path> <name>` \
  `wp get <name>` \
  `wp delete <name>` \
  `wp list`

### Utilities:
  `wp stale`: Find broken paths \
  `wp update`, `wp uninstall`

## Installation
Supports macOS/Linux systems.

To install, run: \
`curl -sSL https://raw.githubusercontent.com/Yashom-Kapoor/Waypoints-CLI/main/install.sh | bash` \
Restart your terminal upon completion. 

## Welcome to Waypoints!
Happy jumping :)
