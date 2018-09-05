#!/usr/bin/env bash

git clone ssh://git@bitbucket.dev.exosuite.fr:7999/esapi/exosuite-users-api.git

sudo docker-compose up -d

rm -rf exosuite-users-api