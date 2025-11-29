#!/bin/bash
if [ $1 == 'up' ]; then
        cp .env-remote-db-live .env
        docker compose -f docker-compose-localdev-remotedb-ok.yml up -d
else
        docker compose -f docker-compose-localdev-remotedb-ok.yml down
fi
