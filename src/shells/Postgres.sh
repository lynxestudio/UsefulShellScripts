#!/bin/sh
PGVERSION=7.3
export PGVERSION
PGDATA=/usr/local/pgsql/data
export PGDATA
echo "Borrando temporales...."
rm -f /tmp/.s.PGSQL.5432 /var/lock/subsys/postgresql
echo "Ejecutando postgreSQL...."
su  -l postgres -c "/usr/local/pgsql/bin/postmaster -o -F  -i -S -D $PGDATA"
echo "Servicio inicializado...."
sleep 4
