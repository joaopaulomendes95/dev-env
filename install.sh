#!/bin/bash

# List of packages
applications=(
  brave-bin  # Browser
  nvim     # Text editor
  obsidian # Note taking app
)

default_applications=(
  dolphin             # File manager
  htop                 # Process viewer
)

additional_packages=(
  yay                   # AUR
  python-pywal16        # Color generator
)

packages=(
  hyprland                    # WM
  foot                        # Terminal
  waybar                      # Status waybar
  wofi                        # App launcher
  hyprpaper                   # Wallpaper backend
  swaync                      # Notifications
  wl-clipboard                # Clipboard manager
  hyprlock                    # Lock manager
  hypridle                    # Idle manager
  wlogout                     # Logout menu
  nwg-look                    # GTK Themer
  hyprshade                   # Blue light filter
  hyprpolkitagent             # Authentication daemon
  xdg-desktop-portal-hyprland # Screen sharing Hyprland
)

fonts=(
  ttf-jetbrains-mono     # System font
)

themes=(
  adw-gtk-theme       # GTK3 theme
)

terminal_packages=(
  fastfetch
  tmux
  lf
)

# Update the systemc
sudo pacman -Sy --noconfirm

# Install packages
for pkg in "${applications[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    yay -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

for pkg in "${default_applications[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    yay -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

for pkg in "${additional_packages[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    yay -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

for pkg in "${packages[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    yay -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

for pkg in "${fonts[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    yay -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

for pkg in "${themes[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    yay -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

for pkg in "${terminal_packages[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    yay -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

echo "All packages installed."
