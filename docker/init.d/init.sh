#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER"  <<-EOSQL
	DROP DATABASE IF EXISTS ortex;

	CREATE DATABASE ortex;
	
	GRANT ALL PRIVILEGES ON DATABASE ortex TO postgres;
EOSQL