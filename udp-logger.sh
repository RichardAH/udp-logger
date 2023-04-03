#!/bin/bash
PORT=12000
LOGDIR="./logs"

mkdir $LOGDIR &> /dev/null
while true
do
    ( tcpdump udp port $PORT -A -n -nn -l -i any 2>/dev/null | grep -v -a ' eth0  In' | grep -vE '^$' | cut -c29- &>> $LOGDIR/`date +"%Y-%m-%d-%H.log"` ) &
    PID=$!
    sleep 3600
    kill $PID
done
