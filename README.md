# custom-hyprland-dotfiles
This repo contains my personal customizations for the ml4w dotfiles for hyprland. I try to avoid modifying the official ml4w files, and only include extras. Some minor modifications had to be done.
## Included customizations
### Modified official files
* Wallpaper script - (temp hopefully) Run wallust for terminal colors when changing wallpaper, which is missing in the latest(stable) version of ML4W
* Autostart configurations - No longer run hypridle, I don't like hypridle >:(
* Themeswitcher script - Modified to find themes as symbolic links
### Custom extras
* Waybar theme - Kiopp Modern
* Wallust config
* Keybindings
* Monitor configuration
* ML4W Hyprland Settings configuration
* Kitty config - For fastfetch wallust colors
* Windowrules: Discord & Spotify always open on workspace 2
* Autostart: Open Discord & Spotify on startup
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
#### After the script is run, you need to manually select your desired files in monitor.conf and keybinding.conf
