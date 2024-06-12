#!/bin/bash

docker run \
    -e POSTGRES_USER=postgres \
    -e POSTGRES_PASSWORD=change_me \
    -e POSTGRES_DB=pet_first \
    -e POSTGRES_SCHEMA=pet_first \
    -p 5432:5432 \
    -v /mnt/C/Work/Docker/pet_first/db_01:/var/lib/postgresql/data \
    -d -t -i --name pet-first-postgres pet-first-postgres