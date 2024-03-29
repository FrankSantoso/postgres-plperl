#!/bin/sh
#
cat <<EOT >> /var/lib/postgresql/data/postgresql.conf
shared_preload_libraries='pg_cron'
cron.database_name='${POSTGRES_DB:-postgres}'
EOT

# Required to load pg_cron
pg_ctl restart
