# Hyprland Configuration

This is my beautiful and organized Hyprland configuration. It includes all necessary files to set up a complete and aesthetically pleasing Wayland desktop environment.

## Overview

This configuration contains:

- `hyprland.conf` - Main Hyprland compositor configuration
- `hyprlock.conf` - Lock screen configuration
- `hyprpaper.conf` - Wallpaper management configuration
- `scripts/` - Custom scripts for additional functionality

## Features

- Organized sections with clear visual separation
- Custom keyboard shortcuts for common tasks
- Volume and brightness controls with notifications
- Screenshot functionality
- Media controls
- Floating window rules for common applications
- Smooth animations and transitions
- Custom lock screen with time and date display

## Key Bindings

### Window Management
- `SUPER + Q` - Close active window
- `SUPER + SHIFT + Q` - Force close active window
- `SUPER + RETURN` - Open terminal
- `SUPER + E` - Open file manager
- `SUPER + F` - Toggle floating window
- `SUPER + SHIFT + F` - Toggle fullscreen
- `SUPER + J` - Toggle split direction (dwindle layout)

### Workspace Navigation
- `SUPER + [1-0]` - Switch to workspace 1-10
- `SUPER + SHIFT + [1-0]` - Move window to workspace 1-10
- `SUPER + mouse scroll` - Navigate between workspaces

### Media Controls
- `XF86AudioRaiseVolume/LowerVolume` - Adjust volume
- `XF86AudioMute` - Toggle mute
- `XF86MonBrightnessUp/Down` - Adjust brightness
- `XF86AudioNext/Prev/Play/Pause` - Media controls

### Screenshot
- `PRINT` - Region screenshot
- `SUPER + SHIFT + S` - Region screenshot to clipboard

## Scripts

### `dunst_ultimate.sh`
Handles volume, brightness, and media controls with notifications.

### `keyboard_swap.sh`
Shows current keyboard layout in a notification.

## Installation

Replace the files in your `~/.config/hypr/` directory with these configuration files.
Make sure the scripts in the `scripts/` directory are executable:

```bash
chmod +x ~/.config/hypr/scripts/*.sh
```

After updating the configuration, reload Hyprland with `SUPER + SHIFT + R`.