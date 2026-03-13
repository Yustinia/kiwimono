# kiwimono

My personalized _hyprland_ dotfiles with matugen theming.

## Overview

| Component        | Description                                     |
| ---------------- | ----------------------------------------------- |
| **App Launcher** | rofi                                            |
| **Bar**          | waybar                                          |
| **Notification** | mako                                            |
| **Terminal**     | kitty                                           |
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

## Installation

1. Install `hyprland` and `stow` via your package manager.

2. Ensure you have the following packages and dependencies listed installed.

3. `git clone` the repository to your local machine.

4. Navigate and `cd` into the `dotfiles` directory.

5. `stow -t ~ <package>` to symlink them.
