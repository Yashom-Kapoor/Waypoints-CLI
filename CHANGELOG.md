# Changelog

All notable changes to Waypoints will be documented here.

## [0.7.5]
Changed:
- Deployed Waypoints via Vercel!
- Now installable via `waypoints-cli.vercel.app/install`

## [0.7.4]
Added:
- Changelog
- Updated version to match changelog

## [0.7.3]
Changed:
- `list` now displays only names
- `list -l` provides detailed name-> path view

## [0.7.2]
Fixed:
- Display error on updating

## [0.7.1]
Added:
- `--force` flag for update

Changed:
- Layout of `help` response

## [0.7.0]
Added:
- Versions
- Updating

## [0.6.5]
Changed:
- File structure, installer & repo simplicity

Fixed:
- `~` root navigation issue, replaced with `home`

## [0.6.4]
Changed:
- Moved commands to `init.zsh`
- Simpler installer

Fixed:
- File name mismatch bugs

## [0.6.3]
Fixed:
- `compinit` issues
- Added `compinit` to installer

## [0.6.2]
Added:
- Context-aware tab completion
- Root `~` navigation

Fixed:
- Items list formatting error

## [0.6.1]
Changed:
- `add` requests file location as argument
- `wp add` description updated

Fixed:
- Enter with no reply on prompt (now caught as "no" response)

## [0.6.0]
Added:
- Tab completion

## [0.5.6]
Added:
- Stale functionality (track paths which no longer exist)
- Delete stale paths (-d flag)
- `wp stale` description

## [0.5.5]
Added:
- Description for `wp <name>` routing 

Fixed:
- Uninstaller bug - subprocess errored due to relative/absolute location mismatch

## [0.5.4]
Fixed:
- Interaction bugs between binary and shell wrapper
- Added exit codes to communicate
- Broken waypoint redirect command

## [0.5.3]
Changed:
- Installation removes old instances of waypoints from .zshrc

## [0.5.2]
Fixed:
- Installation works by cloning repo into temp dir
- Installation now uninstalls temp dir on completion

## [0.5.1]
Fixed:
- Name mismatch bugs in installer
- Cleaned up stray file locations

## [0.5.0]
Added:
- Published to Github
- Publicly accessible via curl!

## [0.4.5]
Fixed:
- Added `waypoints.json` initialization to `installer.sh`

## [0.4.4]
Changed:
- Added reserved keywords (`add`, `list`, etc.) for path names
- No longer able to name a waypoint with a reserved name (eg. `add`)

## [0.4.3]
Fixed:
- Removed PATH reliance: PATH and shell script interference
- `wp` solely works off shell wrapper

## [0.4.2]
Changed:
- Reorganized file structure
- All files in `~/.waypoints`

## [0.4.1]
Changed:
- Uninstall now works through `wp uninstall`

## [0.4.0]
Added:
- Uninstaller (uninstall.sh)
- Removes binary, shell helper, and zshrc line

## [0.3.0]
Added:
- Installer (install.sh)
- Creates local folders
- Installs shell integrations
- Adds source lines to .zshrc

## [0.2.0]
Added:
- Shell wrapper (waypoints.sh)
- `cd` to result if path exists

## [0.1.4]
Changed:
- `waypoints-cli` to a binary

## [0.1.3]
Added:
- `help`
- CLI help banner

## [0.1.2]
Changed:
- Prompt to replace name if already exists

## [0.1.1]
Added:
- `add`, `get`, `delete`, `list` functionality

## [0.1.0]
Added:
- Python file (`waypoints-cli.py`)
- Storage (`waypoints.json`)

## [0.0.0]
Hello world, Waypoints!