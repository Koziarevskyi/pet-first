#!/bin/bash

docker rm -v pet-first-liquibase || true
docker rmi pet-first-liquibase:1.0 || true
