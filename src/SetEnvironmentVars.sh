#! /bin/sh

#this script set the vars in 

#set JAVA_HOME
echo "export JAVA_HOME=/opt/ibm/ibm-java-x86_64-80"
#set DOTNET_ROOT
echo "export DOTNET_ROOT=$HOME/dotnet"
#set Postgres pgdata
echo "export PGDATA=/usr/local/pgsql/data"
#set PATH
echo "export PATH=$PATH:$JAVA_HOME/bin:$DOTNET_ROOT:/usr/local/pgsql/bin"
