#!/bin/sh

while true; do
    SHARD_ITERATOR=$(aws kinesis get-shard-iterator --stream-name "test-stream" --shard-id shardId-00000000 --shard-iterator-type LATEST --output text --endpoint https://kinesis:4567 --no-verify-ssl 2>/dev/null)
    aws kinesis get-records --shard-iterator $SHARD_ITERATOR --endpoint https://kinesis:4567 --no-verify-ssl 2>/dev/null |jq -r '.Records'
    sleep 2
done
