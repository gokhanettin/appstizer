#!/bin/sh

mkdir -p /data/upfiles

python /app/manage.py syncdb --noinput
python /app/manage.py migrate --noinput

exec /usr/bin/uwsgi /app/uwsgi.ini
