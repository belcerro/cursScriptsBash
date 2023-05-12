HOST=$(hostname)
IP=$(curl ifconfig.me)
echo ${IP}
MISSATGE="La máquina ${HOST} s'ha iniciat a la data: $(date) amb IP: ${IP} i estat de particio: ${PARTICIO}"
/home/belen/cursScriptsBash/telegram_missatge.sh "${MISSATGE}"