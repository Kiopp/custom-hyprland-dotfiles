#!/usr/bin/env fish

# -----------------------------------------------------
# Created by Jesper Wentzell (Kiopp)
# -----------------------------------------------------

set script_dir "$HOME/dotfiles/custom-hyprland-dotfiles"
set hypr_conf "$HOME/.config/hypr"

# Helper function to check, delete, and link
function sync_link
    set -l src $argv[1]
    set -l dest $argv[2]

    # -e checks for files/dirs, -L checks for broken symlinks
    if test -e "$dest"; or test -L "$dest"
        rm -rf "$dest"
    end

    # Ensure the parent directory exists before linking
    mkdir -p (dirname "$dest")
    
    ln -s "$src" "$dest"
    echo "Linked: "(basename "$src")" -> $dest"
end

# -----------------------------------------------------
# Argument Handling
# -----------------------------------------------------
set -l is_laptop false
if test "$argv[1]" = "laptop"
    echo "Loading laptop config..."
    set is_laptop true
end

# -----------------------------------------------------
# Waybar Themes & Scripts
# -----------------------------------------------------
sync_link "$script_dir/waybar/kiopp-modern" "$HOME/.config/waybar/themes/kiopp-modern"
sync_link "$script_dir/waybar/kiopp-glass"  "$HOME/.config/waybar/themes/kiopp-glass"
sync_link "$script_dir/waybar/themeswitcher.sh" "$HOME/.config/waybar/themeswitcher.sh"

# -----------------------------------------------------
# Hyprland Modules
# -----------------------------------------------------
set -l ext "lua" 

sync_link "$script_dir/hypr/keybindings/custom.$ext" "$hypr_conf/conf/keybindings/custom.$ext"
sync_link "$script_dir/hypr/windowrules/custom.$ext" "$hypr_conf/conf/windowrules/custom.$ext"
sync_link "$script_dir/hypr/monitors/custom.$ext"    "$hypr_conf/conf/monitors/custom.$ext"
sync_link "$script_dir/hypr/monitors/custom-laptop.$ext" "$hypr_conf/conf/monitors/custom-laptop.$ext"
sync_link "$script_dir/hypr/hyprmod/profiles" "$hypr_conf/hyprmod/profiles"

# Conditional Autostart
if $is_laptop
    sync_link "$script_dir/hypr/conf/laptop-autostart.$ext" "$hypr_conf/conf/autostart.$ext"
else
    sync_link "$script_dir/hypr/conf/autostart.$ext" "$hypr_conf/conf/autostart.$ext"
end

# -----------------------------------------------------
# Miscellaneous
# -----------------------------------------------------
sync_link "$script_dir/matugen/kitty-colors.conf"  "$HOME/.config/matugen/templates/kitty-colors.conf"
sync_link "$script_dir/fastfetch"                 "$HOME/.config/fastfetch"
sync_link "$script_dir/quickshell/statusbar.json"  "$HOME/.config/ml4w-statusbar/statusbar.json"

# -----------------------------------------------------
# Reload
# -----------------------------------------------------
echo "Reloading hyprland..."
hyprctl reload