#!/usr/bin/env bash

PROD="prod"

Production () {
    git clone ssh://git@bitbucket.dev.exosuite.fr:7999/esapi/exosuite-users-api.git
}

Development () {
    echo "dev"
}

while true; do
    read -p "Install for production or development? answer prod or dev " yn
    case $yn in
        [Pp]* ) Production; break;;
        [Dd]* ) Development; break;;
        * ) echo "Please answer prod or dev.";;
    esac
done

#exit

sudo docker-compose up -d

if [ "$yn" == "$PROD" ]; then
    rm -rf exosuite-users-api
fi