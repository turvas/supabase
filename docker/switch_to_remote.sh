#!/bin/bash
./compose_local.sh down
./compose_remote.sh up
#
#docker compose -f docker-compose-localdev-ok.yml down
#cp .env-remote-db-live .env
#docker compose -f docker-compose-localdev-remotedb-ok.yml up -d
