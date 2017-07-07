# phpmyadmnin

Apache 2.x + mod\_php 7.x + PHPMyAdmin

Based on debian:stretch.

## Building

Just run `make`.

## Volumes

* `/var/lib/php/sessions` (tmpfs is recommended)
* `/var/log/apache2`

## Exposed ports

* 8080/tcp

## Environment variables

* `APACHE_SERVER_NAME` (hostname by default)
* `PHP_TIMEZONE` ('UTC' by default)
* `MYSQL_HOST`
