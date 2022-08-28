#!/usr/bin/env bash

set -euo pipefail

source "$DOTLY_PATH/scripts/core/_main.sh"

##? Add intellij keymap symlink (since it's not synced via JetBrains Toolbox)
#?? 1.0.0
##?
##? Usage:
##?   code_style

preferences_dir="$HOME/Library/Application Support/JetBrains"
intellij_version=$(ls "$preferences_dir" | grep 'IntelliJIdea' | sort -r | head -n 1)
intellij_keymap_folder="$preferences_dir/$intellij_version/keymaps"

rm -rf "$intellij_keymap_folder"
ln -s -i "$DOTFILES_PATH/editors/intellij/keymaps" "$intellij_keymap_folder"

echo "Applied to path: $intellij_keymap_folder"
echo "Done for $intellij_version!"
