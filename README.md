# kiwimono

My personalized _mangoWC_ dotfiles with a minimal and monochromatic color scheme.

## Overview

| Component        | Description                                     |
| ---------------- | ----------------------------------------------- |
| **App Launcher** | rofi                                            |
| **Bar**          | waybar                                          |
| **Notification** | swaync                                          |
| **Terminal**     | foot                                            |
| **Wallpaper**    | swww                                            |
| **Logout Menu**  | wlogout                                         |
| **Shell**        | fish + starship                                 |
| **Fonts**        | ttf-jetbrains-mono, ttf-jetbrains-mono-nerd,    |
|                  | ttf-meslo-nerd, apple-fonts, and noto-fonts-cjk |

| Miscellaneous | Description     | Command                                      |
| ------------- | --------------- | -------------------------------------------- |
| hyprlock      | For lockscreen  | Super + L                                    |
| hyprpicker    | For colorpicker | Super + P                                    |
| grim + slurp  | For screenshot  | Super + Shift + S (Region Clipboard)         |
|               |                 | PrtSc (Screen Clipboard)                     |
|               |                 | Super + PrtSc (Save to Pictures/Screenshots) |

| Dependencies             |
| ------------------------ |
| gtk3                     |
| gtk4                     |
| xdg-desktop-portal-gnome |
| xdg-desktop-portal-gtk   |
| xdg-desktop-portal-wlr   |
| wl-clipboard             |
| cliphist                 |

## Installation

1. Install `mangowc` and `stow` via your package manager.

2. Ensure you have the following packages and dependencies listed installed.

3. `git clone` the repository to your local machine.

4. Navigate and `cd` into the `dotfiles` directory.

5. `stow -t ~ <package>` to symlink them.

## Preview

![mango-1](preview/mango1.png)
![mango-2](preview/mango2.png)
![mango-3](preview/mango3.png)
