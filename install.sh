#!/bin/bash

echo "Installing Waypoints CLI..."

# Make temp dir to install git repo
TMP_DIR=$(mktemp -d)
trap "rm -rf $TMP_DIR" EXIT # Guarantee uninstall temp dir
git clone https://github.com/Yashom-Kapoor/Waypoints-CLI "$TMP_DIR"

# Create local bin, data, and shell folder if needed
mkdir -p ~/.waypoints-cli/bin
mkdir -p ~/.waypoints-cli/data
mkdir -p ~/.waypoints-cli/shell

# Copy binary to bin
cp "$TMP_DIR/waypoints-cli" ~/.waypoints-cli/bin/waypoints-cli
chmod +x ~/.waypoints-cli/bin/waypoints-cli

# Initialize waypoints.json
if [ ! -f ~/.waypoints-cli/data/waypoints.json ]; then
    echo '{}' > ~/.waypoints-cli/data/waypoints.json
fi

# Copy shell
cp "$TMP_DIR/waypoints.sh" ~/.waypoints-cli/shell/waypoints.sh

# Copy uninstall
cp "$TMP_DIR/uninstall.sh" ~/.waypoints-cli/uninstall.sh

# Add source line if not there already in zshrc
if ! grep -q "waypoints.sh" ~/.zshrc; then
    echo 'source ~/.waypoints-cli/shell/waypoints.sh' >> ~/.zshrc
fi

echo "Done. Restart terminal or run: source ~/.zshrc"
