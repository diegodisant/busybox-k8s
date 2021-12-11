#!/bin/sh

if [ -f "${BUSYBOX_ENV_FILE}" ]; then
  export $(egrep -v '^#' ${BUSYBOX_ENV_FILE} | xargs)
else
  echo -e "\e[41m\e[97m\e[1m [E] Error: Unable to read .envfile, run -> cp .env.dist .env \e[0m\n"
fi
