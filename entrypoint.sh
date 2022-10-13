#!/bin/bash

set -e
# set -x

APP_NAME="${APP_NAME}"

if [ $APP_NAME = "worker" ]; then
    exec celery -A worker worker -P $CELERY_POOL -l $LOG_LEVEL --without-gossip --without-mingle -Ofair
elif [ $APP_NAME = "flower" ]; then
    exec celery -A worker flower
fi
