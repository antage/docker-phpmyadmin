# phpmyadmnin

Apache 2.x + mod\_php 5.x + PHPMyAdmin

Based on debian:stable.

## Building

Just run `make`.

## Volumes

* `/var/lib/php5/sessions` (tmpfs is recommended)
* `/tmp/apache2-coredumps` (optional)
* `/var/log/apache2`

## Exposed ports

* 8080/tcp

## Environment variables

* `APACHE_SERVER_NAME` (hostname by default)
* `APACHE_COREDUMP`
* `PHP_TIMEZONE` ('UTC' by default)
* `MYSQL_HOST`
