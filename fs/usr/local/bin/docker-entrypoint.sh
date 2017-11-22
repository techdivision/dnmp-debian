#!/usr/bin/env bash

# fix mysql file permissions before service starts
chown -R mysql:mysql /var/lib/mysql

exec "$@"