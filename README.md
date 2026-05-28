<div align="center">

# Ishaan's Hyprland Rice (WIP)

A custom, work-in-progress [Hyprland](https://hyprland.org/) dotfiles configuration for Arch Linux. This setup focuses on modularity, clean aesthetics, and workflow efficiency, utilizing GNU Stow for easy symlink management.

![Arch Linux](https://img.shields.io/badge/OS-Arch_Linux-33aadd?style=for-the-badge&logo=arch-linux&logoColor=white)
![Hyprland](https://img.shields.io/badge/WM-Hyprland-00aadd?style=for-the-badge&logo=linux&logoColor=white)
![Work In Progress](https://img.shields.io/badge/Status-Work_In_Progress-ffaa00?style=for-the-badge)

</div>

---

## Core Components

* **Window Manager:** Hyprland (Configured modularly using Lua)
* **Status Bar:** Waybar (Heavily customized with media support and a custom reload script)
* **Terminal:** Kitty (Configured with custom padding and background opacity)
* **App Launcher:** Rofi (Customized theming based on the official repository)
* **Wallpaper Management:** Swww & Waypaper
* **Clipboard Manager:** Cliphist & wl-clipboard (Integrated directly into a Rofi menu)
* **Dotfile Management:** GNU Stow

---

## Installation

**Dependencies Required:**
Ensure you have the following packages installed on your Arch Linux system before applying the configurations:
`hyprland`, `waybar`, `kitty`, `rofi-wayland`, `swww`, `waypaper`, `cliphist`, `wl-clipboard`, `stow`

**1. Clone the repository**
```bash
git clone [https://github.com/Choc-Shake/Hyprland-Rice-WIP-.git](https://github.com/Choc-Shake/Hyprland-Rice-WIP-.git)
cd Hyprland-Rice-WIP-

```
2. Backup existing configurations
Ensure you back up any existing configuration files in your ~/.config directory to avoid conflicts.

3. Apply the dotfiles
This repository uses a dotfiles directory and GNU Stow to manage symlinks. You can apply the configurations using the included script:
```bash
chmod +x stow.sh
./stow.sh
```

## Notable Features

**Modular Hyprland Configuration**
Unlike standard monolithic configuration files, this setup breaks down the Hyprland configuration into distinct Lua modules (e.g., autostart.lua, keybinds.lua, monitors.lua). This makes the environment highly organized, easy to read, and simple to maintain.

**Waybar Integration**
The Waybar configuration has undergone a major overhaul to remove redundant code. It includes built-in media support and is paired with a custom shell script (launch.sh) bound to a keybind for instant reloading, making testing and tweaking seamless.

**Advanced Clipboard**
Clipboard history is managed via cliphist and wl-clipboard. Rather than using a standalone GUI, the clipboard history is piped directly into a custom Rofi menu for quick, keyboard-driven pasting.

**Wallpaper Management**
Wallpapers are handled dynamically using swww combined with waypaper as a frontend GUI, providing an easy and reliable way to switch backgrounds on Wayland.

**Repository Structure**

```Plaintext
Hyprland-Rice-WIP-/
├── dotfiles/
│   └── .config/
│       ├── hypr/
│       │   ├── Modules/
│       │   │   ├── autostart.lua
│       │   │   ├── enviroment_variables.lua
│       │   │   ├── input.lua
│       │   │   ├── keybinds.lua
│       │   │   ├── misc.lua
│       │   │   ├── monitors.lua
│       │   │   ├── permissions.lua
│       │   │   ├── visuals.lua
│       │   │   └── windows_rules.lua
│       │   └── hyprland.lua
│       ├── kitty/
│       │   └── kitty.conf
│       ├── rofi/
│       │   ├── config_old.rasi
│       │   └── config.rasi
│       └── waybar/
│           ├── config.jsonc
│           ├── launch.sh
│           └── style.css
├── README.md
└── stow.sh