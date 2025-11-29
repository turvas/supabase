#!/bin/bash
./compose_remote.sh down
./compose_local.sh up
#docker compose -f docker-compose-localdev-remotedb-ok.yml down
#cp .env-local-db .env
#docker compose -f docker-compose-localdev-ok.yml up -d --remove-orphans
