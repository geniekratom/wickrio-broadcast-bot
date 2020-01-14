#!/bin/sh

#
# If the input argument exists then check if it is a file
# if so it should contain a list of key=value entries.
#
if [ -n "$1" ]; then
  if [ -f "$1" ]; then
    . "$1"
  fi
fi

if [ -z "$CLIENT_NAME" ];
then
  node configure.js
else
  echo $CLIENT_NAME >client_bot_username.txt
  WICKRIO_BOT_NAME=$CLIENT_NAME node configure.js
fi

