#!/usr/bin/env sh
START_TIME=`cat /tmp/start_time`
NOW=`date +%s`
STARTUP_TIME=`expr $NOW - $START_TIME`
printf "> Total Container Startup Time: ${STARTUP_TIME}s"
printf "\n"
