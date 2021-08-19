#!/bin/bash

set -ex

# Set password for default user
echo "vagrant:vagrant" | sudo chpasswd

# Enable the multiverse repository
sudo apt-add-repository multiverse
sudo apt-get -y update

# Install xfce and Virtualbox additions
sudo apt-get install -y xfce4 virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11

# Use LightDM login screen
sudo apt-get install -y lightdm lightdm-gtk-greeter

# Install a more feature-rich applications menu
sudo apt-get install -y xfce4-whiskermenu-plugin


