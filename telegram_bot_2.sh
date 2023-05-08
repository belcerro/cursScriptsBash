#!/bin/bash

TOKEN="xxxxxxxxxxxxxxxxx"
ID="xxxxxxxxx"
MENSAJE=${1}
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE"
