#!/usr/bin/env bash

set -euo pipefail

source "$DOTLY_PATH/scripts/core/_main.sh"

##? Add intellij Code Style symlink (since it's not synced via JetBrains Toolbox)
#?? 1.0.0
##?
##? Usage:
##?   code_style

preferences_dir="$HOME/Library/Application Support/JetBrains"
intellij_version=$(ls "$preferences_dir" | grep 'IntelliJIdea' | sort -r | head -n 1)
intellij_code_style_folder="$preferences_dir/$intellij_version/inspection"

rm -rf "$intellij_code_style_folder"
ln -s -i "$DOTFILES_PATH/editors/intellij/inspection/" "$intellij_code_style_folder"

echo "Applied to path: $intellij_code_style_folder"
echo "Done for $intellij_version!"
