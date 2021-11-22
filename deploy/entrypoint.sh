#!/bin/bash
echo $CONFIG
if [ ${CONFIG} == "master" ]
then
  echo "-------------master server!!!------------------"
  # https://github.com/vercel/next.js/discussions/10675
  cd /app && pm2 list && yarn pm2start
else
  echo "------------- test server -----------------"
  cd /app && pm2 list && yarn pm2start
fi