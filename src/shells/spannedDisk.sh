#!/bin/sh
#
#Script para dividir un archivo grande 
#en pedazos para poder incluir en un floppy
#usage: spannedDisk.sh [archivo]
split -b 1400000 $1