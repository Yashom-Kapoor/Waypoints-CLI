#!/bin/bash

echo "Uninstalling Waypoints..."

# Uninstall waypoints-cli folder
rm -rf ~/.waypoints-cli

# Remove (/d) any lines with "/waypoints.sh" from .zshrc
sed -i '' '/waypoints.sh/d' ~/.zshrc
