#!/bin/bash

echo "Installing Waypoints CLI..."

# Create local bin, data, and shell folder if needed
mkdir -p ~/.waypoints-cli/bin
mkdir -p ~/.waypoints-cli/data
mkdir -p ~/.waypoints-cli/shell/waypoints.sh

# Copy binary to bin
cp waypoints-cli ~/.waypoints-cli/bin/waypoints-cli
chmod +x ~/.waypoints-cli/bin/waypoints-cli

# Initialize waypoints.json
if [ ! -f ~/.waypoints-cli/data/waypoints.json ]; then
    echo '{}' > ~/.waypoints-cli/data/waypoints.json
fi

# Copy shell
cp waypoints.sh ~/.waypoints-cli/shell/waypoints.sh

# Copy uninstall
cp uninstall.sh ~/.waypoints-cli/uninstall.sh

# Add source line if not there already in zshrc
if ! grep -q "waypoints.sh" ~/.zshrc; then
    echo 'source ~/.waypoints/shell/waypoints.sh' >> ~/.zshrc
fi

echo "Done. Restart terminal or run: source ~/.zshrc"
