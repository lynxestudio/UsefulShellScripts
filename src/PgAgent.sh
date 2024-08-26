#!/bin/sh

PGCTL=/usr/local/pgsql/bin/pg_ctl
PGDATA=/usr/local/pgsql/data
LOGFILE=/usr/local/pgsql/data/postmaster.log

case "$1" in
			start)
				echo -n "Starting PostgreSQL..."
				su - postgres -c "$PGCTL -D $PGDATA -l $LOGFILE start "
				;;
			stop)
				echo -n "Stopping PostgreSQL..."
				su -l postgres -c "$PGCTL -D $PGDATA stop"
				;;
			*)
				echo "Usage: $0 {start|stop}"
				exit 1
				;;
esac
exit 0
					
