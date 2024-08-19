#!/bin/sh
hola()
{
echo "hola"
}

dos()
{
date
}

echo "corriendo comando"
echo "argumento " $1
case $# in
	1) hola;;
	2) dos;;
esac
