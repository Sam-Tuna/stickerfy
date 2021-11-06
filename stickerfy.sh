#!/bin/bash

function help_message(){
	echo ""
	echo "Usage: stickerfy -i img1 -i img2 ..."
	echo ""
	echo "Note: imagemagick supports bzlib cairo djvu fontconfig freetype heic jbig jng jp2 jpeg lcms lqr ltdl lzma openexr pangocairo png raqm raw rsvg tiff webp wmf x xml zip zlib"
	echo ""
	}


if [[ ${#} -eq 0 ]]; then
   help_message
fi

optstring="i:h"

while getopts ${optstring} arg; do
	case ${arg} in
		h)
			#echo "oioioi"
			help_message
			exit 1
			;;
		i)
			#echo "aqui"
			one=${OPTARG};
			;;
		:)
			exit 1
			;;
		?)
			echo "unknown input: -${OPTARG}"
			help_message
			;;
	esac
	list="${list} ${one}"
done

echo ${list}

for file in ${list}
	do
		convert -background none -gravity center "$file" -resize 512x512 -extent 512x512 ${file##*/}.png
	done
exit 0
