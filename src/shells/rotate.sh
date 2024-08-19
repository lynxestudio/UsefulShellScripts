for archivo in `ls -F | grep *$`
do
	na=`basename $archivo .`
	echo "convirtiendo archivo: " $archivo
	convert $archivo -rotate 90 $na.jpg
done
