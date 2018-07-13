#!/bin/bash

while true; do
    start=$(date +%s%6N)
    end_at=$(expr $start + 1000000)
    for i in {0..299}; do
        echo "123456${i}:awesome"
    done
    end=$(date +%s%6N)
    sleep_interval=$(echo "scale=6; ($end_at - $end) / 1000000" | bc)
    sleep $sleep_interval
    echo "$(date +%s) Sent 300 events" >> log.out
done
