# custom-hyprland-dotfiles
This repo contains my personal customizations for the ml4w dotfiles for hyprland.
## Included customizations
* Waybar theme - Kiopp Modern
* Wallpaper script - (temp hopefully) Run wallust when changing wallpaper, which was missing in v2.9.9.1 of ML4W
* Keybindings
* Monitor configuration
* Themeswitcher script - Modified to find themes in symbolic links (for easy setup using setup.fish)
* ML4W Hyprland Settings configuration
## Setup guide
Run the included setup.fish script
### The script does the following:
* Check if the files/symbolic links already exist
* If they exist; removes old config
* Creates symbolic links for my custom configurations
* Reload hyprland
