#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Elastic
# @raycast.mode silent

# Optional parameters:
# @raycast.icon images/elastic.jpeg
# @raycast.packageName pelayo

# Documentation:
# @raycast.description elastic.pelayo.com

open https://0b585e0a479344b19c52852048fe3b0a.westeurope.azure.elastic-cloud.com:9243/s/architecture-panthea/app/discover#/?_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now-30d%2Fd,to:now))&_a=(columns:!(),filters:!(),index:'318a6de0-8811-11ec-98ff-b5f499bd9af9',interval:auto,query:(language:kuery,query:''),sort:!(!('@timestamp',desc)))

