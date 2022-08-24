#!/usr/bin/env bash

set -euo pipefail

source "$DOTLY_PATH/scripts/core/_main.sh"

if [ ! -d "$HOME/.sdkman" ]; then
    log::note "🚀 Installing sdkman"
    curl -s "https://get.sdkman.io" | bash
    log::success "🚀 sdkman installed successfully"
fi



