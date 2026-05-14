#!/bin/bash

echo "Installing Waypoints CLI..."

# Make temp dir to install git repo
TMP_DIR=$(mktemp -d)
trap "rm -rf $TMP_DIR" EXIT # Guarantee uninstall temp dir
git clone https://github.com/Yashom-Kapoor/Waypoints-CLI "$TMP_DIR"

TMP_DIR="$TMP_DIR/waypoints"

# Create necessary folders if needed
mkdir -p ~/.waypoints-cli/bin
mkdir -p ~/.waypoints-cli/data
mkdir -p ~/.waypoints-cli/shell
mkdir -p ~/.waypoints-cli/config

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

# Copy init
cp "$TMP_DIR/init.zsh" ~/.waypoints-cli/config/init.zsh

# Copy version
cp "$TMP_DIR/VERSION" ~/.waypoints-cli/VERSION

# Install init.zsh
if ! grep -q "waypoints init" ~/.zshrc; then
    echo "source ~/.waypoints-cli/config/init.zsh  # waypoints init" >> ~/.zshrc
fi

echo ""
echo "✓ Waypoints installed successfully"
echo "→ Restart your terminal to finish setup"
echo ""
echo "New to Waypoints? Start Here:"
echo "  wp tour"
echo ""
