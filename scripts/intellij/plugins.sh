#!/usr/bin/env bash

set -euo pipefail

source "$DOTLY_PATH/scripts/core/_main.sh"

##? Add intellij Code Templates symlink (since it's not synced via JetBrains Toolbox)
#?? 1.0.0
##?
##? Usage:
##?   folder
#docs::parse "$@"

preferences_dir="$HOME/Library/Application Support/JetBrains"
intellij_version=$(ls "$preferences_dir" | grep 'IntelliJIdea' | sort -r | head -n 1)
intellij_plugins_folder="$preferences_dir/$intellij_version/plugins"

rm -rf "$intellij_plugins_folder"
ln -s -i "$DOTFILES_PATH/editors/intellij/plugins/" "$intellij_plugins_folder"

echo "Applied to path: $intellij_plugins_folder"
echo "Done for $intellij_version!"
