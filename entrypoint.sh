#!/bin/bash
set -e

bench set-mariadb-host $DB_HOST:$DB_PORT

bench new-site $SITE_NAME \
  --db-host $DB_HOST \
  --db-port $DB_PORT \
  --db-name $DB_NAME \
  --mariadb-root-password $DB_PASSWORD \
  --admin-password $ADMIN_PASSWORD || true

bench --site $SITE_NAME install-app erpnext

bench start
