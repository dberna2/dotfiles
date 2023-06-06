#!/usr/bin/env bash

set -euo pipefail

source "$DOTLY_PATH/scripts/core/_main.sh"

##? Add intellij Code Style symlink (since it's not synced via JetBrains Toolbox)
#?? 1.0.0
##?
##? Usage:
##?   templates

preferences_dir="$HOME/Library/Application Support/JetBrains"
intellij_version=$(ls "$preferences_dir" | grep 'IntelliJIdea' | sort -r | head -n 1)
intellij_templates_folder="$preferences_dir/$intellij_version/templates"

rm -rf "$intellij_templates_folder"
ln -s -i "$DOTFILES_PATH/editors/intellij/templates/" "$intellij_templates_folder"

echo "Applied to path: $intellij_templates_folder"
echo "Done for $intellij_version!"
