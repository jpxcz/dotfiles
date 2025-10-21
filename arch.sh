#!/bin/bash

# Usage:
#   ./arch.sh -b        → Backup installed packages
#   ./arch.sh -i        → Reinstall packages from backup

backup() {
    echo "Backing up installed packages..."
    sudo pacman -Qqe > ./arch/pacman.txt
    yay -Qqe > ./arch/yay.txt
}

install() {
    echo "Installing packages from backup..."
    sudo pacman -S --needed - < ./arch/pacman.txt
    yay -S --needed - < ./arch/yay.txt
}

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 [-b | -i]"
    exit 1
fi

# Parse argument
case "$1" in
    -b)
        backup
        ;;
    -i)
        install
        ;;
    *)
        echo "❌ Invalid option: $1"
        echo "Usage: $0 [-b | -i]"
        exit 1
        ;;
esac

