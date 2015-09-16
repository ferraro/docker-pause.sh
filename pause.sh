#!/bin/bash

term() {
    echo 'sigterm / sigkill received'
    kill -TERM $child
    exit
}

trap term SIGTERM
trap term SIGKILL

sleep inf &
child=$!
wait $child
