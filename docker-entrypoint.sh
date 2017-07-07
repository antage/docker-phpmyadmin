#!/bin/bash
set -e

if [ "$1" = 'apache2' ]; then
    export APACHE_SERVER_NAME="${APACHE_SERVER_NAME:-$(hostname)}"
    export PHP_TIMEZONE="${PHP_TIMEZONE:-UTC}"

    echo "Updating apache/php configuration files."
    /usr/local/bin/confd -onetime -backend env

    echo "Starting Apache 2.x in foreground."
    exec /usr/sbin/apache2 -D FOREGROUND
fi

exec "$@"
