#!/bin/sh

SERVER=/usr/local/pgsql/bin/postmaster
PGCTL=/usr/local/pgsql/bin/pg_ctl
PGDATA=/usr/local/pgsql/data
OPTIONS=-i
LOGFILE=/usr/local/pgsql/data/postmaster.log

case "$1" in
			start)
				echo -n "Starting PostgreSQL..."
				su - postgres -c "nohup $SERVER $OPTIONS -D $PGDATA > $LOGFILE 2>&1 &"
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
					
