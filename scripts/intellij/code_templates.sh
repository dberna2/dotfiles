#!/usr/bin/env bash

set -euo pipefail

source "$DOTLY_PATH/scripts/core/_main.sh"

##? Add intellij Code Templates symlink (since it's not synced via JetBrains Toolbox)
#?? 1.0.0
##?
##? Usage:
##?   code_templates

preferences_dir="$HOME/Library/Application Support/JetBrains"
intellij_version=$(ls "$preferences_dir" | grep 'IntelliJIdea' | sort -r | head -n 1)
intellij_code_templates_folder="$preferences_dir/$intellij_version/fileTemplates"

rm -rf "$intellij_code_templates_folder"
ln -s -i "$DOTFILES_PATH/editors/intellij/fileTemplates/" "$intellij_code_templates_folder"

echo "Applied to path: $intellij_code_templates_folder"
echo "Done for $intellij_version!"
