#!/usr/bin/env bash

CONTAINER_NAME=example-migrations

docker exec -it $CONTAINER_NAME su sindria -c "php /var/www/app/artisan migrate:generate"
