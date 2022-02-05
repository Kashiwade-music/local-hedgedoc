#!/bin/sh
crond
/usr/local/bin/docker-entrypoint.sh postgres

#crond -l 6 -f