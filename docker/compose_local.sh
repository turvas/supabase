#!/bin/bash
if [ $1 == 'up' ]; then
        cp .env-local-db .env
        docker compose -f docker-compose-localdev-ok.yml up -d --remove-orphans
else
        docker compose -f docker-compose-localdev-ok.yml down
fi
