#!/bin/bash

cd "$(dirname "$0")/changelog"
tar -zcvf pet-first-changesets.tar.gz .
mv -f pet-first-changesets.tar.gz ..
