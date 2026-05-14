#!/bin/bash

echo "Uninstalling Waypoints..."

# Uninstall waypoints-cli folder
rm -rf ~/.waypoints-cli

# Remove (/d) any lines with "waypoints init" from .zshrc
sed -i '' '/waypoints init/d' ~/.zshrc
