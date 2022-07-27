#!/bin/bash

TOPICS=(
  'accountCreated'
  'accountUpdated'
  'accountDeleted'
)

for topic in "${TOPICS[@]}"
do
  echo "Creating topic ${topic}, please wait ..."
  aws sns create-topic \
  --endpoint-url http://localhost:9330 \
  --name ${topic} \
  --region us-east-1
  echo "Created topic ${topic}"
  echo " "
done
