#!/bin/bash
# protected under the "Ill cut yo face" license.
# written by sinux theOner
#**********************************************************************
# This will take the txt file output from the script CLI utility
# and create a new file, similiarly named, cleaned of all the unreadable 
# characters such as control, shift, etc

if [ $# -ne 1 ] ; then echo 'Usage: cscript <filename.txt>' ; exit 1 ; fi ;

uglyscript=$1

echo "Cleaning $1..."

beautifulscript=$(echo "$1" | sed "s/.txt$/-beautified.txt/")

echo "$beautifulscript"


cat "$uglyscript" | perl -pe 's/\e([^\[\]]|\[.*?[a-zA-Z]|\].*?\a)//g' | col -b > "$beautifulscript"

