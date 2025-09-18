#!/bin/sh
set -e

DB_HOST=${DB_HOST:-db}
DB_USER=${DB_USER:-root}
DB_PASS=${DB_PASS:-root}

echo "⏳ Waiting for MySQL at $DB_HOST..."

until mysqladmin ping -h"$DB_HOST" -u"$DB_USER" -p"$DB_PASS" --silent; do
  sleep 2
done

echo "✅ MySQL is up - starting application"
exec "$@"
