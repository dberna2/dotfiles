#!/usr/bin/env bash

set -euo pipefail

source "$DOTLY_PATH/scripts/core/_main.sh"

##? Add intellij Code Templates symlink (since it's not synced via JetBrains Toolbox)
#?? 1.0.0
##?
##? Usage:
##?   intellij_plugins_folder

preferences_dir="$HOME/Library/Application Support/JetBrains"
intellij_version=$(ls "$preferences_dir" | grep 'IntelliJIdea' | sort -r | head -n 1)
intellij_plugins_folder="$preferences_dir/$intellij_version"

ln -sf "$DOTFILES_PATH/editors/intellij/config/idea.properties" "$intellij_plugins_folder/idea.properties"

echo "Applied to path: $preferences_dir"
echo "Done for $intellij_version!"
