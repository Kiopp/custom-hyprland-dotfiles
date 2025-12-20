#!/usr/bin/env fish

# -----------------------------------------------------
# Created by Jesper Wentzell (Kiopp)
# -----------------------------------------------------

# Configure script directory
set script_dir "$HOME/dotfiles/custom-hyprland-dotfiles"

# -----------------------------------------------------
# Read command line argument
# -----------------------------------------------------

set -l arg_str "laptop" # 

set -l is_laptop false # False by default

# Check argument
if test (count $argv) -gt 0
    # Check if the first argument matches the required string
    if test "$argv[1]" = "$arg_str"
        echo "Loading laptop config..."
        set is_laptop true
    end
end

# -----------------------------------------------------
# Waybar themes
# -----------------------------------------------------

set waybar_themes "$HOME/.config/waybar/themes"

# Test if directory exists
if test -d "$waybar_themes/kiopp-modern"
    # Remove the existing file or link
    rm -r "$waybar_themes/kiopp-modern"
    echo "$waybar_themes/kiopp-modern removed."
end

# Create symbolic link
echo "Creating symbolic link"
ln -s "$script_dir/waybar/kiopp-modern" "$waybar_themes"

# Test if directory exists
if test -d "$waybar_themes/kiopp-glass"
    # Remove the existing file or link
    rm -r "$waybar_themes/kiopp-glass"
    echo "$waybar_themes/kiopp-glass removed."
end

# Create symbolic link
echo "Creating symbolic link"
ln -s "$script_dir/waybar/kiopp-glass" "$waybar_themes"

# -----------------------------------------------------
# Keybindings
# -----------------------------------------------------

set keybindings "$HOME/.config/hypr/conf/keybindings/custom.conf"

# Test if file exists
if test -e "$keybindings"
    # Remove the existing file or link
    rm "$keybindings"
    echo "$keybindings removed."
end

# Create symbolic link
echo "Creating symbolic link"
ln -s "$script_dir/hypr/keybindings/custom.conf" "$keybindings"

# -----------------------------------------------------
# Monitors
# -----------------------------------------------------

set monitors "$HOME/.config/hypr/conf/monitors/custom.conf"
set lmonitors "$HOME/.config/hypr/conf/monitors/custom-laptop.conf"

# Test if file exists
if test -e "$monitors"
    # Remove the existing file or link
    rm "$monitors"
    echo "$monitors removed."
end

if test -e "$lmonitors"
    # Remove the existing file or link
    rm "$lmonitors"
    echo "$lmonitors removed."
end

# Create symbolic link
echo "Creating symbolic links"
ln -s "$script_dir/hypr/monitors/custom.conf" "$monitors"
ln -s "$script_dir/hypr/monitors/custom-laptop.conf" "$lmonitors"

# -----------------------------------------------------
# Waybar theme switcher.sh
# -----------------------------------------------------

set themeswitch "$HOME/.config/waybar/themeswitcher.sh"

# Test if file exists
if test -e "$themeswitch"
    # Remove the existing file or link
    rm "$themeswitch"
    echo "$themeswitch removed."
end

# Create symbolic link
echo "Creating symbolic link"
ln -s "$script_dir/waybar/themeswitcher.sh" "$themeswitch"

# -----------------------------------------------------
# ml4w hyprland settings
# -----------------------------------------------------

set ml4w_settings "$HOME/.config/com.ml4w.hyprlandsettings/hyprctl.json"

# Test if file exists
if test -e "$ml4w_settings"
    # Remove the existing file or link
    rm "$ml4w_settings"
    echo "$ml4w_settings removed."
end

# Create symbolic link
echo "Creating symbolic link"
ln -s "$script_dir/ml4w_settings/hyprctl.json" "$ml4w_settings"

# -----------------------------------------------------
# Hypridle
# -----------------------------------------------------

set autostart "$HOME/.config/hypr/conf/autostart.conf"

# Test if file exists
if test -e "$autostart"
    # Remove the existing file or link
    rm "$autostart"
    echo "$autostart removed."
end

# Create symbolic link
echo "Creating symbolic link"

if $is_laptop
    ln -s "$script_dir/hypr/conf/laptop-autostart.conf" "$autostart"
else
    ln -s "$script_dir/hypr/conf/autostart.conf" "$autostart"
end

# -----------------------------------------------------
# Windowrules
# -----------------------------------------------------

set windowrules "$HOME/.config/hypr/conf/windowrules/custom.conf"

# Test if file exists
if test -e "$windowrules"
    # Remove the existing file or link
    rm "$windowrules"
    echo "$windowrules removed."
end

# Create symbolic link
echo "Creating symbolic link"
ln -s "$script_dir/hypr/windowrules/custom.conf" "$windowrules"

# -----------------------------------------------------
# Matugen kitty template
# -----------------------------------------------------

set kitty "$HOME/.config/matugen/templates/kitty-colors.conf"

# Test if file exists
if test -e "$kitty"
    # Remove the existing file or link
    rm "$kitty"
    echo "$kitty removed."
end

# Create symbolic link
echo "Creating symbolic link"
ln -s "$script_dir/matugen/kitty-colors.conf" "$kitty"
# -----------------------------------------------------
# Reload Hyprland
# -----------------------------------------------------
echo "Reloading hyprland"
hyprctl reload
