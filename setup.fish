#!/usr/bin/env fish

# -----------------------------------------------------
# Created by Jesper Wentzell (Kiopp)
# -----------------------------------------------------

# Save the script's directory
set script_dir "$HOME/dotfiles/custom-hyprland-dotfiles"

# -----------------------------------------------------
# Waybar theme
# -----------------------------------------------------

set waybar_themes "$HOME/.config/waybar/themes"

# Test if directory exists
if test -d "$waybar_themes/kiopp-modern"
    echo "File exists. Removing $waybar_themes/kiopp-modern..."
    # Remove the existing file or link
    rm -r "$waybar_themes/kiopp-modern"
    echo "kiopp-modern removed."
end

# Create symbolic link
echo "Creating symbolic link for kiopp-modern"
ln -s "$script_dir/waybar/kiopp-modern" "$waybar_themes"

# -----------------------------------------------------
# Wallpaper script (temp)
# -----------------------------------------------------

set wall_script "$HOME/.config/hypr/scripts/wallpaper.sh"

# Test if file exists
if test -e "$wall_script"
    echo "File exists. Removing $wall_script..."
    # Remove the existing file or link
    rm "$wall_script"
    echo "wallpaper.sh removed."
end

# Create symbolic link
echo "Creating symbolic link for wallpaper script"
ln -s "$script_dir/hypr/scripts/wallpaper.sh" "$wall_script"

# -----------------------------------------------------
# Keybindings
# -----------------------------------------------------

set keybindings "$HOME/.config/hypr/conf/keybindings/custom.conf"

# Test if file exists
if test -e "$keybindings"
    echo "File exists. Removing $keybindings..."
    # Remove the existing file or link
    rm "$keybindings"
    echo "$keybindings removed."
end

# Create symbolic link
echo "Creating symbolic link for keybindings"
ln -s "$script_dir/hypr/keybindings/custom.conf" "$keybindings"

# -----------------------------------------------------
# Monitors
# -----------------------------------------------------

set monitors "$HOME/.config/hypr/conf/monitors/custom.conf"

# Test if file exists
if test -e "$monitors"
    echo "File exists. Removing $monitors..."
    # Remove the existing file or link
    rm "$monitors"
    echo "$monitors removed."
end

# Create symbolic link
echo "Creating symbolic link for monitor setup"
ln -s "$script_dir/hypr/monitors/custom.conf" "$monitors"

# -----------------------------------------------------
# Waybar theme switcher.sh
# -----------------------------------------------------

set themeswitch "$HOME/.config/waybar/themeswitcher.sh"

# Test if file exists
if test -e "$themeswitch"
    echo "File exists. Removing $themeswitch..."
    # Remove the existing file or link
    rm "$themeswitch"
    echo "$themeswitch removed."
end

# Create symbolic link
echo "Creating symbolic link for themeswitcher.sh"
ln -s "$script_dir/waybar/themeswitcher.sh" "$themeswitch"

# -----------------------------------------------------
# ml4w hyprland settings
# -----------------------------------------------------

set ml4w_settings "$HOME/.config/com.ml4w.hyprlandsettings/hyprctl.json"

# Test if file exists
if test -e "$ml4w_settings"
    echo "File exists. Removing $ml4w_settings..."
    # Remove the existing file or link
    rm "$ml4w_settings"
    echo "$ml4w_settings removed."
end

# Create symbolic link
echo "Creating symbolic link for hyprctl.json"
ln -s "$script_dir/ml4w_settings/hyprctl.json" "$ml4w_settings"

# -----------------------------------------------------
# Kitty
# -----------------------------------------------------

set kitty "$HOME/.config/kitty/custom.conf"

# Test if file exists
if test -e "$kitty"
    echo "File exists. Removing $kitty..."
    # Remove the existing file or link
    rm "$kitty"
    echo "$kitty removed."
end

# Create symbolic link
echo "Creating symbolic link for kitty configuration"
ln -s "$script_dir/kitty/custom.conf" "$kitty"

# -----------------------------------------------------
# Reload Hyprland
# -----------------------------------------------------
echo "Reloading hyprland"
hyprctl reload
