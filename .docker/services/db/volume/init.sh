#! /bin/bash
# Create the databases used for development and testing.
psql -v --username "${POSTGRES_USER}" -c "CREATE DATABASE ${POSTGRES_DB_DEV};"
psql -v --username "${POSTGRES_USER}" -c "CREATE DATABASE ${POSTGRES_DB_TEST};"
