#!/bin/bash

/usr/bin/kinesalite --createStreamMs 1 --ssl --putFailureRate 96 &

aws kinesis create-stream --stream-name "test-stream" --shard-count 1 --endpoint-url https://localhost:4567 --no-verify-ssl

sleep 180

pkill node

/usr/bin/kinesalite --createStreamMs 1 --ssl &
aws kinesis create-stream --stream-name "test-stream" --shard-count 1 --endpoint-url https://localhost:4567 --no-verify-ssl

sleep 300

