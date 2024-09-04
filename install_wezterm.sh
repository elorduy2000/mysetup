#! /usr/bin/bash

echo ""
echo "::: INSTALL WEZTERM ON ARCH LINUX :::"
echo ""

echo "::: Starting..."
echo ""

echo ">>> wezterm:"
    echo "Installing..."
    sudo pacman -S --noconfirm wezterm

    echo "Ensuring .wezterm.lua..."
    sudo cp dotfiles/.wezterm.lua $HOME
echo ""

echo "::: Done!"
echo ""
