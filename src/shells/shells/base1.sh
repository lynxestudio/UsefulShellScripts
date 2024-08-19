clear
cat base.awk
echo "Desea calcular el importe s/n?"
read opcion
if[ $opcion = "s"] then
awk '$4 > 0 { print $1 $2*$3-$4}' base.awk
fi
if [$opcion = "n"]
then
exit;
fi
