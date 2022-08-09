#!/bin/bash

# @raycast.title Sonar Local
# @raycast.description sonar.local.com

# @raycast.icon images/sonar.png
# @raycast.packageName local
# @raycast.mode silent
# @raycast.schemaVersion 1

# Optional parameters:
# @raycast.argument1 { "type": "text", "placeholder": "Project name", "optional": true }

if [[ "$1" == "" ]]; then
    open "http://localhost:9000/projects?sort=-analysis_date"
else
    open "http://localhost:9000/projects?search=$1&sort=-analysis_date"
fi
