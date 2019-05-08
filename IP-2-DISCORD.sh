 #!/bin/sh

set -e

# 172 addresses are Docker addresses too, so you might want to change the last
# "\d+" to \24, or whatever your subnet mask is.
IP="$(ip a | grep -Po "(10|172|192)\.(\d+\.)+\d+\/\d+")"
WEBHOOK='<DISCORD_WEBHOOK_URL>'
USERNAME='IP-bot'

curl -X POST \
  -F "content=${IP}" \
  -F "username=${USERNAME}" \
  "${WEBHOOK}"
