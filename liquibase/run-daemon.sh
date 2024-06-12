#!/bin/bash

docker run -d -t -i \
  -e DB_HOST=192.168.50.222 \
  -e DB_PORT=5432 \
  -e DB_NAME=pet_first \
  -e DB_USER=postgres \
  -e DB_PASSWORD=change_me \
  -e DB_SCHEMA=pet_first \
  --name pet-first-liquibase pet-first-liquibase:1.0
