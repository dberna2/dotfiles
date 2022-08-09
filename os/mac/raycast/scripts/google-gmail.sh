#!/bin/bash

# @raycast.title Gmail
# @raycast.description Open gmail.com in the default browser

# @raycast.icon images/google-gmail-logo.png
# @raycast.mode silent
# @raycast.packageName Google
# @raycast.schemaVersion 1

# Optional parameters:
# @raycast.argument1 { "type": "text", "placeholder": "Query", "optional": true }
# @raycast.argument2 { "type": "text", "placeholder": "From", "optional": true }
# @raycast.argument3 { "type": "text", "placeholder": "To", "optional": true }

query=$1
from=$2
to=$3

if [[ "$1" == "" && "$2" == "" && "$3" == "" ]]; then
	open "https://gmail.com"
elif [[ "$query" != "" && "$from" == "" && "$to" == "" ]]; then
	open "https://mail.google.com/mail/u/0/#search/$query"
elif [[ "$from" != "" && "$query" == "" && "$to" == "" ]]; then
	open "https://mail.google.com/mail/u/0/#advanced-search/from=$from&subset=all&within=1d&sizeoperator=s_sl&sizeunit=s_smb&query=from%3A($from)"
elif [[ "$to" != "" && "$query" == "" && "$from" == "" ]]; then
	open "https://mail.google.com/mail/u/0/#advanced-search/to=$to&subset=all&within=1d&sizeoperator=s_sl&sizeunit=s_smb&query=to%3A($to)"
else
	open "https://mail.google.com/mail/u/0/#advanced-search/from=$from&to=$to&subset=all&has=hola&within=1d&sizeoperator=s_sl&sizeunit=s_smb&query=from%3A($from)+to%3A($to)+$query"
fi

