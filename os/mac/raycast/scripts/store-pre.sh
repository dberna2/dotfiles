#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Store pre
# @raycast.mode silent

# Optional parameters:
# @raycast.icon images/wso2.png
# @raycast.packageName pelayo

# Optional parameters:
# @raycast.argument1 { "type": "text", "placeholder": "Project", "optional": true }

# Documentation:
# @raycast.description managerpre1.pelayo.com

open https://managerpre1.pelayo.com:9443/store/apis/list?query="$1"