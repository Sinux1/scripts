#!/bin/bash
# cscript.sh v2
# protected under the "Ill cut yo face" license.
# written by sinux theOner
#**********************************************************************
# To use this script, pass it the directory you keep your typescripts in
# I recommend a directory called logs inside project directory.
# Your typescript files should keep the naming convention
# "typescript(sequence).txt . This script will only match
# file names beginning with typescript and ending with .txt
# Beautified typescripts will be output to the logs directory.


if [ $# -ne 1 ] ; then echo 'Usage: dscript <path/to/logs/>' ; exit 1 ; fi ;

dirbase="$1"
dirfiles="${dirbase}/typescript*.txt"
for f in $dirfiles
do
	uglyscript=$f
	echo "Cleaning $uglyscript..."
	beautifulscript=$(echo "$f" | sed "s/.txt$/-beautified.txt/")
	echo "$beautifulscript"
	cat "$uglyscript" | perl -pe 's/\e([^\[\]]|\[.*?[a-zA-Z]|\].*?\a)//g' | col -b > "$beautifulscript"
done


