#!/bin/sh
pg_dump hedgedoc -Fc -U hedgedoc -f /var/lib/postgresql/backups/backup_$(TZ=-9 date "+%Y%m%d_%H%M").dump
cd /var/lib/postgresql/backups/
rm -f `ls -t . | tail -n+31`