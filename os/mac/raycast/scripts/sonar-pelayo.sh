#!/bin/bash

# @raycast.title Sonar Pelayo
# @raycast.description sonar.pelayo.com

# @raycast.icon images/sonar.png
# @raycast.packageName pelayo
# @raycast.mode silent
# @raycast.schemaVersion 1

# Optional parameters:
# @raycast.argument1 { "type": "text", "placeholder": "Project name", "optional": true }

if [[ "$1" == "" ]]; then
    open "http://192.6.3.179:9000/projects?sort=-analysis_date"
else
    open "http://192.6.3.179:9000/projects?search=$1&sort=-analysis_date"
fi
