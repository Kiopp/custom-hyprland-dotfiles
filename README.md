# custom-hyprland-dotfiles
This repo contains my personal customizations for the ml4w dotfiles for hyprland.
## Included customizations
* Waybar theme - Kiopp Modern
* Wallpaper script - (temp hopefully) Run wallust for terminal colors when changing wallpaper, which is missing in the latest(stable) version of ML4W
* Wallust config
* Autostart configurations - No longer run hypridle, I don't like hypridle >:(
* Keybindings
* Monitor configuration
* Themeswitcher script - Modified to find themes in symbolic links (for easy setup using setup.fish)
* ML4W Hyprland Settings configuration
* Kitty config - For fastfetch wallust colors
## Dependencies
* wallust - I use yay to install
* The ml4w dotfiles for hyprland should be installed
## Setup guide
Run the included setup.fish script. For the laptop setup, edit the script to change which wallpaper script is linked.
### The script does the following:
* Check if the files/symbolic links already exist
* If they exist; removes old config
* Creates symbolic links for my custom configurations
* Reload hyprland
#### After the script is run, you need to manually select your desired files in ~/.config/hypr/conf (monitor.conf and keybinding.conf)
