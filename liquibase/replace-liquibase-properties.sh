#!/bin/sh

sed -i "s|<host>|${DB_HOST}|g" /liquibase/liquibase.yml
sed -i "s|<port>|${DB_PORT}|g" /liquibase/liquibase.yml
sed -i "s|<db_name>|${DB_NAME}|g" /liquibase/liquibase.yml
sed -i "s|<username>|${DB_USER}|g" /liquibase/liquibase.yml
sed -i "s|<password>|${DB_PASSWORD}|g" /liquibase/liquibase.yml
sed -i "s|<schema_name>|${DB_SCHEMA}|g" /liquibase/liquibase.yml

# Pass execution to Main container process (set by RUN directive)
exec "$@"
