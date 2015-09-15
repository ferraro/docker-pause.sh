#!/bin/bash
trap 'echo sigterm ; exit' SIGTERM
trap 'echo sigkill ; exit' SIGKILL

echo waiting
while true;
do
    sleep 1
done
