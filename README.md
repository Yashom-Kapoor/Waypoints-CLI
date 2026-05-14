# Waypoints

**Version: 0.5.1**

A lightweight CLI for saving and jumping between directories.

## Commands
### Waypoint Navigation:

  `<name>`:            Navigate to waypoint <name> \
  `home`:              Navigate to home (~)

### Waypoint Modification:

  `add <path> <name>`: Save a directory as <name> \
  `get <name>`:        Print saved path \
  `delete <name>`:     Remove saved waypoint

### Utility:

  `list`:              Show all waypoints

### Stale Paths:

  `stale`:             List all stale paths \ 
  `stale -d`:          Delete all stale paths

### Info:

  `-v`, `--version`:     Show Waypoints CLI version

### Installations:

  `update`:            Update Waypoints \
  `update --force`:    Force update Waypoints \
  `uninstall`:         Uninstall Waypoints

## Installation
Unfortunately, this only works for macOS/Linux systems.

To install, run: `curl -sSL https://raw.githubusercontent.com/Yashom-Kapoor/Waypoints-CLI/main/install.sh | bash`
