#!/bin/sh

pkill -9 -f "/etc/stream-radio/start.conf"

[ -d /var/run/stream-radio ] || mkdir /var/run/stream-radio
chmod 775 /var/run/stream-radio
chown audiostream /var/run/stream-radio

[ -f /var/run/stream-radio/stream-radio.pid ] && rm /var/run/stream-radio/stream-radio.pid

[ -d /var/log/stream-radio/ ] || mkdir /var/log/stream-radio/
chmod 755 /var/log/stream-radio
chown audiostream:www-data /var/log/stream-radio/
[ -f /var/log/stream-radio/radio.log ] && chmod 664 /var/log/stream-radio/radio.log
[ -f /var/log/stream-radio/radio.log ] && chown audiostream:www-data /var/log/stream-radio/radio.log

exit 0
