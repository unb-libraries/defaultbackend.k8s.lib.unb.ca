#!/usr/bin/env sh
if [ -n "$LOCAL_HOSTNAME" ] && [ -n "$LOCAL_PORT" ]; then
  printf "\nVisit your instance at:" > /tmp/startup_block.txt
  printf "\nhttp://$LOCAL_HOSTNAME:$LOCAL_PORT" >> /tmp/startup_block.txt
fi

if [ -n "$LOCAL_HOSTNAME" ] && [ -n "$LOCAL_PORT" ]; then
  cat /tmp/startup_block.txt
  printf "\n"
fi
