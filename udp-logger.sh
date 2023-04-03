#!/bin/bash
PORT=12000
LOGDIR="./logs"

mkdir $LOGDIR
while true
do
    ( nc -u -l $PORT &> $LOGDIR/`date +"%Y-%m-%d-%H.log"` ) &
    PID=$!
    sleep 3600
    kill $PID
done

