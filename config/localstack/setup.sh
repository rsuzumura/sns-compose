#!/bin/bash

export AWS_PAGER=""
source config/localstack/sqs/create-queue.sh
source config/localstack/sns/create-topic.sh
source config/localstack/sns/subscribes/subscribe.sh