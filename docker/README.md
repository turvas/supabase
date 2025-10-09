# Supabase Docker

This is a minimal Docker Compose setup for self-hosting Supabase. Follow the steps [here](https://supabase.com/docs/guides/hosting/docker) to get started.

if Docker engine is run inside WSL2, to expose services to host LAN address (Android emulator usecase), use netsh portproxy from Admin shell, for example port 8000:
netsh interface portproxy add v4tov4 listenport=8000 listenaddress=0.0.0.0 connectport=8000 connectaddress=127.0.0.1

on KALEV-PC
cd supabase/docker

to start supabase with remote DB:
---------------------------------
docker compose -f docker-compose-localdev-ok.yml down
cp .env-remote-db-live .env
docker compose -f docker-compose-localdev-remotedb-ok.yml up -d

to start supabase with local DB:
--------------------------------
docker compose -f docker-compose-localdev-remotedb-ok.yml down
cp .env-local-db .env
docker compose -f docker-compose-localdev-ok.yml up -d --remove-orphans
