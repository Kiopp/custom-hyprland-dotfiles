# custom-hyprland-dotfiles
This repo contains my personal customizations for ml4wOS. I try to avoid modifying the official ml4w files, and only include extras.
## Included customizations
### Modified official files
* Autostart configurations - No longer run hypridle, I don't like hypridle >:(
* Themeswitcher script - Modified to find themes as symbolic links
* fastfetch config - I do not prefer the ml4w logo
### Custom extras
* Waybar themes - Kiopp Modern, Kiopp Glass
* Keybindings
* Monitor configuration
* ML4W Hyprland Settings configuration
* Windowrules: Discord & Spotify always open on workspace 2
* Autostart: Open Discord & Spotify on startup
* Matugen kitty color template
## Dependencies
* The latest stable version of the ml4w dotfiles for hyprland should be installed
## Setup guide
Run the included setup.fish script. For the laptop setup, run like this:
```./setup.fish laptop```
### The script does the following:
* Check if the files/symbolic links already exist
* If they exist; **DELETES** old config
* Creates symbolic links for my custom configurations
* Reload hyprland
#### After the script is run, you should manually select files in monitor.conf and keybinding.conf
## Spicetify setup
Run the included spotify_setup.fish script.
### The script does the following:
* Set required filepaths (default is my filepaths)
* Install official spotify flatpak
* Updates required permissions for Spicetify to be able to modify the spotify files
* Installs Spicetify
* Applies backup (if reinstalling)
#### Remember you have to manually add the prefs_path to ~/.config/spiceify/config-xpui.ini
## How I update
Install the ml4w update by using the official install script like normal. Then come back to this git repository and review or revert the changes made from the update. In ml4w v2.12.0 the app menu in waybar needs to be toggled in the ml4w settings app.
## License
This project is licensed under the GPL 3.0, as it incorporates code/components from the ML4W dotfiles.
