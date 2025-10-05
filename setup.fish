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
# Waybar theme
# -----------------------------------------------------

set waybar_themes "$HOME/.config/waybar/themes"

# Test if directory exists
if test -d "$waybar_themes/kiopp-modern"
    # Remove the existing file or link
    rm -r "$waybar_themes/kiopp-modern"
    echo "$waybar_themes/kiopp-modern removed."
end

# Create symbolic link
echo "Creating symbolic link for kiopp-modern"
ln -s "$script_dir/waybar/kiopp-modern" "$waybar_themes"

# -----------------------------------------------------
# Wallust config
# -----------------------------------------------------

set wallust "$HOME/.config/wallust"

# Test if directory exists
if test -d "$wallust"
    # Remove the existing file or link
    rm -r "$wallust"
    echo "$wallust removed."
end

# Create symbolic link
echo "Creating symbolic link for wallust"
ln -s "$script_dir/wallust" "$wallust"

# -----------------------------------------------------
# Wallpaper script
# -----------------------------------------------------

set wall_script "$HOME/.config/hypr/scripts/wallpaper.sh"

# Test if file exists
if test -e "$wall_script"
    # Remove the existing file or link
    rm "$wall_script"
    echo "$wall_script removed."
end

# Create symbolic link
echo "Creating symbolic link for wallpaper script"
if $is_laptop
    ln -s "$script_dir/hypr/scripts/laptop-wallpaper.sh" "$wall_script"
else
    ln -s "$script_dir/hypr/scripts/wallpaper.sh" "$wall_script"
end


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
echo "Creating symbolic link for keybindings"
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
echo "Creating symbolic link for monitor setup"
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
echo "Creating symbolic link for themeswitcher.sh"
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
echo "Creating symbolic link for hyprctl.json"
ln -s "$script_dir/ml4w_settings/hyprctl.json" "$ml4w_settings"

# -----------------------------------------------------
# Kitty
# -----------------------------------------------------

set kitty "$HOME/.config/kitty/custom.conf"

# Test if file exists
if test -e "$kitty"
    # Remove the existing file or link
    rm "$kitty"
    echo "$kitty removed."
end

# Create symbolic link
echo "Creating symbolic link for kitty configuration"
ln -s "$script_dir/kitty/custom.conf" "$kitty"

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
echo "Creating symbolic link for kitty configuration"
ln -s "$script_dir/hypr/conf/autostart.conf" "$autostart"

# -----------------------------------------------------
# Reload Hyprland
# -----------------------------------------------------
echo "Reloading hyprland"
hyprctl reload
