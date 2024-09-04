#! /usr/bin/bash

# varialbes ----------------------------------------------------------------------
cpu="amd" # 'amd' 'intel'
is_virtualbox = true
# --------------------------------------------------------------------------------

echo ""
echo "::: INSTALL UTILITIES ON ARCH LINUX :::"
echo ""

echo "::: Starting..."
echo ""

echo ">>> microcode:"
    if [[ "$cpu" -eq "amd" ]]; then
        sudo pacman -S --noconfirm amd-ucode
    else
        sudo pacman -S --noconfirm intel-ucode
    fi
echo ""

echo ">>> utilities:"
    echo "Installing..."
    sudo pacman -S --noconfirm tldr nano micro tree htop btop figlet fastfetch
echo ">>> ok"
echo ""

is_virtualbox=true
if [ $is_virtualbox ]; then
    echo ">>> virtualbox:"
        sudo pacman -S --noconfirm virtualbox-guest-utils
    echo ""
fi

echo "::: Done!"
echo ""
