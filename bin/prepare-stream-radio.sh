#!/bin/sh

pkill -9 -f "/etc/stream-schedule/radio/start.conf"

[ -d /var/run/stream-schedule ] || mkdir /var/run/stream-schedule
chmod 775 /var/run/stream-schedule
chown audiostream /var/run/stream-schedule

[ -f /var/run/stream-schedule/stream-radio.pid ] && rm /var/run/stream-schedule/stream-radio.pid

[ -d /var/log/stream-schedule/ ] || mkdir /var/log/stream-schedule/
chmod 755 /var/log/stream-schedule
chown audiostream:www-data /var/log/stream-schedule/
[ -f /var/log/stream-schedule/radio.log ] && chmod 664 /var/log/stream-schedule/radio.log
[ -f /var/log/stream-schedule/radio.log ] && chown audiostream:www-data /var/log/stream-schedule/radio.log

exit 0
