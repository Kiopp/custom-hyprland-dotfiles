#!/usr/bin/env fish

# -----------------------------------------------------
# Created by Jesper Wentzell (Kiopp)
# -----------------------------------------------------
set spotify_client = "/var/lib/flatpak/app/com.spotify.Client/x86_64/stable/active/files/extra/share/spotify/"
set prefs_path = "/home/jesper/.var/app/com.spotify.Client/config/spotify/prefs"

# -----------------------------------------------------
# Install spotify from flathub
# -----------------------------------------------------
flatpak install com.spotify.Client

# -----------------------------------------------------
# Update permissions
# -----------------------------------------------------
sudo chmod a+wr /var/lib/flatpak/app/com.spotify.Client/x86_64/stable/active/files/extra/share/spotify
sudo chmod a+wr -R /var/lib/flatpak/app/com.spotify.Client/x86_64/stable/active/files/extra/share/spotify/Apps

# -----------------------------------------------------
# Install Spicetify, command from official spicetify docs
# -----------------------------------------------------
curl -fsSL https://raw.githubusercontent.com/spicetify/cli/main/install.sh | sh

spicetify backup apply
