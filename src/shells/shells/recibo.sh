clear
echo "Desea ver el total s/n?"
read opcion
if[ $opcion = "s" ] then
awk '$1 > 0 { print $1 $2*$3}' recibo.awk
fi
if[ $opcion = "n"]
then
exit
fi
