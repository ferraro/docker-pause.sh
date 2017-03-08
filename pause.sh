#!/bin/bash

term() {
    echo 'SIGTERM received'
    kill -TERM $child
    exit $?
}

trap term SIGTERM

sleep inf &
child=$!
wait $child
