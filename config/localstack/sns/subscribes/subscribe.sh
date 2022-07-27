#!/bin/bash

QUEUE_SUBSCRIBES=(
  'account-created'
  'account-updated'
  'account-deleted'
)

for subscribe in "${QUEUE_SUBSCRIBES[@]}"
do
  echo "Subscribing to ${subscribe}, please wait ..."
  aws sns subscribe \
  --endpoint-url http://localhost:9330 \
  --region us-east-1 \
  --cli-input-json "$(cat $(pwd)/config/localstack/sns/subscribes/${subscribe}.json)" \
  --protocol sqs \
  --notification-endpoint http://localhost:9330/000000000000/${subscribe} 
  echo "Finish subscribe to ${subscribe}"
  echo " "
done
