clear
echo "Programa de espacio en disco"
echo "Presiona <ENTER> para continuar...."
read enter
df -h | awk '{print $1 "\t" $2 "\n"}'
