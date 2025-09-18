#!/bin/bash
set -e

# MySQL initialization script
# The database is already created by the MYSQL_DATABASE environment variable
# This script can be used for additional initialization if needed

mysql -u root -p"$MYSQL_ROOT_PASSWORD" <<-EOSQL
    CREATE DATABASE IF NOT EXISTS gocrud_app;
    USE gocrud_app;
    -- Additional initialization queries can be added here
EOSQL
