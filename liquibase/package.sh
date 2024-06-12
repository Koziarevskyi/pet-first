#!/bin/bash

cd "$(dirname "$0")/changelog"
tar -zcvf pet-first-auth-changesets.tar.gz .
mv -f pet-first-auth-changesets.tar.gz ..
