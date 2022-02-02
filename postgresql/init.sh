#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  CREATE USER user_autenticacao_app WITH PASSWORD 'user_autenticacao_app';
  CREATE SCHEMA IF NOT EXISTS ms_autenticacao AUTHORIZATION user_autenticacao_app;
EOSQL
