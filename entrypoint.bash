#!/bin/bash

if [[ -z "RATBOT_DISCORD_TOKEN" ]] || [[ -z "RATBOT_DB_HOST" ]] || [[ -z "RATBOT_DB_NAME" ]] || [[ -z "RATBOT_DB_USERNAME" ]] || [[ -z "RATBOT_DB_PW" ]]; then
  echo -e "\nRequired ENV variables:\n\n\tRATBOT_DISCORD_TOKEN $RATBOT_DISCORD_TOKEN\n\n\tRATBOT_DB_HOST $RATBOT_DB_HOST\n\tRATBOT_DB_NAME $RATBOT_DB_NAME\n\tRATBOT_DB_USERNAME $RATBOT_DB_USERNAME\n\tRATBOT_DB_PW $RATBOT_DB_PW\n"
fi

python3 ./src/ratBot.py
