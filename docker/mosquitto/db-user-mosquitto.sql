-- Configure role mosquitto_read, used by mosquitto
-- Read-only user that can select from database tables.
-- Can run all procedures (they will break if they have insert, update or delete permission)
CREATE ROLE mosquitto_read WITH NOCREATEDB NOCREATEROLE NOLOGIN NOINHERIT;

-- grant usage on the db
GRANT USAGE ON SCHEMA public TO mosquitto_read;

-- enable connectio to db-s
--GRANT CONNECT ON DATABASE "nrg-opt" TO mosquitto_read;

-- allow select on all tables
GRANT SELECT ON ALL TABLES IN SCHEMA public TO mosquitto_read;
-- if your tables use bigint, then extra:
GRANT SELECT ON ALL SEQUENCES IN SCHEMA public TO mosquitto_read;
--GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public TO mosquitto_read;

-- Grant default select on all tables created in the Future
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO mosquitto_read;

-- change pass to correct
CREATE USER mosquitto WITH PASSWORD 'securepa55';
-- grant read access to USER mosquitto, user must exist before that..
GRANT mosquitto_read TO mosquitto;