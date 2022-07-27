#!/bin/bash

QUEUES=(
  'account-created'
  'account-updated'
  'account-deleted'
)

for queue in "${QUEUES[@]}"
do
  echo "Creating queue ${queue}, please wait ..."
  aws sqs create-queue \
    --endpoint-url=http://localhost:9330 \
    --cli-input-json "$(cat $(pwd)/config/localstack/sqs/queue-config.json)" \
    --queue-name ${queue} 
  echo "Created queue ${queue}"
  echo " "
done
