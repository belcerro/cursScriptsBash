TOKEN="6110004324:AAFqdvnklVC1qz8LC25tPVkaLEGg6y2mkgg"
ID="5047375565"
MENSAJE="Hola! La data del equip és: $(date)"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE"