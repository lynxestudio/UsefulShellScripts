#!/bin/sh
WINEPREFIX=$HOME/.wine
export WINEPREFIX

wine  --debugmsg -all "C:\\Program Files\\KaZaA Lite\\Kazaa.exe"
