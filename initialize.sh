#! /usr/bin/bash

echo ""
echo "::: INITIAL CONFIGURATION TO MY ARCH LINUX SETUP (to run once) :::"
echo ""

echo "::: Starting..."
echo ""

echo ">>> pacman:"
    echo "Configuring paralellism..."
    sudo sed -i 's/#ParallelDownloads = 5/ParallelDownloads = 10\r\nILoveCandy/g' /etc/pacman.conf

    echo "Updating system..."
    sudo pacman -Syu
echo ""

echo ">>> keyboard:"
    echo "Configuring to spanish..."
    sudo sed -i 's/KEYMAP=us/KEYMAP=es/g' /etc/vconsole.conf
    sudo sed -i 's/XKBLAYOUT=us/XKBLAYOUT=es/g' /etc/vconsole.conf
echo ""

echo ">>> grub:"
    sudo sed -i 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/g' /etc/default/grub
    sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 quiet"/GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 quiet splash"/g' /etc/default/grub
    sudo grub-mkconfig -o /boot/grub/grub.cfg
echo ""

echo "::: Done!"
echo ""

echo "Reboot needed!"
echo ""
