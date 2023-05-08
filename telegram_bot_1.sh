TOKEN="xxxxxxxxxx"
ID="xxxxxxxxxxx"
MENSAJE="Hola! La data del equip és: $(date)"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE"