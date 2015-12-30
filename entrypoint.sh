#!/bin/bash
set -e

source /etc/apache2/envvars

if [ "$1" = 'speedtest-server' ]; then
  exec apache2 -D FOREGROUND
fi

exec "$@"
