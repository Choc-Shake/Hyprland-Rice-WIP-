#!/bin/bash

SOURCE_DIR="$HOME/Projects/Hyprland-Rice-WIP-/dotfiles/.config"
TARGET_DIR="$HOME/.config"

echo "Starting dotfiles sync..."

# Loop through every directory inside your repo's .config folder
for folder in "$SOURCE_DIR"/*/; do
    # Get just the folder name (e.g., 'hypr', 'waybar')
    folder_name=$(basename "$folder")
    
    # If the target is an actual directory (not a symlink), back it up
    if [ -d "$TARGET_DIR/$folder_name" ] && [ ! -L "$TARGET_DIR/$folder_name" ]; then
        echo "Backing up existing directory: $folder_name to ${folder_name}.bak"
        mv "$TARGET_DIR/$folder_name" "$TARGET_DIR/${folder_name}.bak"
    fi
    
    # The -sfn flags are critical:
    # -s: symbolic link
    # -f: force (overwrites existing symlinks)
    # -n: treats existing symlinks to directories as files (prevents nested links!)
    echo "Symlinking: $folder_name"
    ln -sfn "$folder" "$TARGET_DIR/$folder_name"
done

echo "Sync complete!"
