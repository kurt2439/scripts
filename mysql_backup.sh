#!/bin/sh
while read line
do
	( DB, USER, PASS ) = $( cat $line | awk '{ print $1 $2 $3 }' )
	#echo "$DB $USER $PASS"
done < $1


