clear
echo "Este programa vera un usuario que se conecto despues de las 3:00"
echo "pulse <enter> para continuar"
read enter
w | awk '$3 > 3 { print $3 }'
