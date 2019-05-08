 #!/bin/sh

set -e

IP="$(ip a | grep -Po "(10|172|192)\.(\d+\.)+\d+\/\d+")"
WEBHOOK='<DISCORD_WEBHOOK_URL>'
USERNAME='IP-bot'

curl -X POST \
  -F "content=${IP}" \
  -F "username=${USERNAME}" \
  "${WEBHOOK}"
