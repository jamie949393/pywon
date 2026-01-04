#!/bin/sh
# Pywon Installation Script
# Installs pywon to /usr/local/bin

set -e

echo "Pywon Installation Script"
echo "========================="
echo

# Check if running as root
if [ "$(id -u)" -eq 0 ]; then
    SUDO=""
else
    SUDO="sudo"
    echo "This script requires sudo privileges to install to /usr/local/bin"
    echo
fi

# Check if pywon file exists
if [ ! -f "pywon" ]; then
    echo "Error: pywon file not found in current directory"
    echo "Please run this script from the pywon repository directory"
    exit 1
fi

# Make pywon executable
chmod +x pywon

# Install to /usr/local/bin
echo "Installing pywon to /usr/local/bin..."
$SUDO cp pywon /usr/local/bin/pywon

# Verify installation
if command -v pywon >/dev/null 2>&1; then
    echo
    echo "✅ Installation successful!"
    echo
    echo "You can now run pywon from anywhere:"
    echo "  pywon yourscript.pywon"
    echo
    echo "Try the examples:"
    echo "  pywon examples/hello.pywon"
    echo
else
    echo
    echo "❌ Installation failed"
    echo "Please check that /usr/local/bin is in your PATH"
    exit 1
fi
