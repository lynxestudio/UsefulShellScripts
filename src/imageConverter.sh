#!/bin/sh

#prerequisites
#This shell requires the package imagemagick
#option 1
cvbmp2jpg()
{
	echo "Converting all .bmp to .jpg in $directory"
			for fileBmp in `ls -l $directory | awk '/-/ && /.[b,B][m.M][p,P]/ { print $9}'`
				do
					filename=`basename $fileBmp .bmp`
					echo "converting ... " $fileBmp" to "$filename".jpg"
					convert $fileBmp $filename.jpg
					sleep 1
		    done
			echo "Done !!!"
			sleep 1
		menu;
}

#option 2
cvpng2jpg()
{
	echo "Converting all .png to .jpg in $directory"
			echo
			for filePng in `ls -l $directory | awk '/-/ && /.[p,P][n,N][g,G]/ { print $9 }'`
				do
					filename=`basename $filePng .png`
					echo "converting ... "$filePng" to "$filename".jpg"
					convert -quality 50 $filePng $filename.jpg
					sleep 1
		    done
			echo "Done !!!"
			sleep 1
		menu;
}
#option 3
cvjpg2png()
{
	echo "Converting all .jpg to .png in $directory"
			for fileJpg in `ls -l $directory | awk '/-/ && /.[j,J][p,P][g,G]/  { print $9 }'`
				do
					filename=`basename $fileJpg .jpg`
					echo "converting ... "$fileJpg" to "$filename".png"
					convert $fileJpg $filename.png
					sleep 1
		    done
			echo "Done!!!"
			sleep 1
		menu;
}
#option 4
doThumb()
{
	echo "Making thumbnails"
	echo -n "Enter width: "
	read width
	echo -n "Enter height: "
	read height
			echo
			for fileJpg in `ls -l $directory | awk '/-/ && /.[j,J][p,P][g,G]/ { print $9 }'`
				do
					filename=`basename $fileJpg .jpg`
					echo "making thumb $width"X"$height -> " $fileJpg
					convert $fileJpg -resize $widthx$height thumb$filename.jpg
					sleep 1
		    done
			echo "Done!!!"
			sleep 1
	menu;
}

menu()
{
    clear
    echo "-----------------------------------------------------------------"
    echo "Shell to convert between different image "
    echo "formats using the convert commmand from ImageMagick."
    echo "------------------------------------------------------------------"
    echo 
    echo "1) convert all bmp files to jpg"
    echo "2)             png files to jpg"
    echo "3)             jpg files to png"
    echo "4) Do thumbnails"
    echo "5) Quit."
    echo
    echo -n "Enter your option > "
    read option
    case $option in
        1) cvbmp2jpg;;
        2) cvpng2jpg;;
        3) cvjpg2png;;
        4) doThumb;;
        5) exit;;
        *) 
        echo
        echo " Not valid option !!!"
        sleep 1
        menu;;
    esac
}

if test $# -eq 0
then 
	echo
	echo "Usage: $0 [folder's images]";
	echo
	exit 2;
else
	directory=$1;
	cd $directory
	menu;
fi;

