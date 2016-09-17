#!/bin/bash
#move and rename a file into a different directory.
############################################################
NUMFILES=20
############################################################
#get environment options
while [[ $# -gt 1 ]]
do
key="$1"

case $key in
    -s|--source)
    SOURCE="$2"
    shift # past argument
    ;;
    -d|--destination)
    DEST="$2"
    shift # past argument
    ;;
esac
shift # past argument or value
done
############################################################
#make the directories we will store the files in
mkdir $DEST
#loop through the directories...
############################################################
for(( i=1; i<=NUMFILES; i++ ))
do
#assume we are in the parent directory of all the directories where our nested file lives.
#The desired file is nested two levels below where we are (the first grandchild)
echo 'moving BER from' $SOURCE$i'/resultsfilters64POLY/BER' 'to' $DEST'/BER'$i
cp $SOURCE$i'/resultsfilters64POLY/BER' $DEST'/BER'$i

done
