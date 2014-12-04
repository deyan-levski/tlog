#!/bin/sh
#
# An ultra minimalistic time logging script.
# Accepts two input arguments - in and out. All other arguments are listed as a comment. Argument see displays log.
# 
# Initial version P1A - Deyan Levski, deyan.levski@eng.ox.ac.uk
#

DIR='/home/ENG/rp14/some3558/data/tlog/'
FILE='timelog.txt'

if [ ! -f $DIR$FILE ]  
	then

	echo "TimeLog File does not exist, creating..."
	echo "Date / Time      		           Action	      Comment" > $DIR$FILE
	echo "-----------------------------------------------------------------------" >> $DIR$FILE

elif [ "$1" == 'in' ]
	then
	echo "Found $FILE punching IN at `date -R`"
	echo "`date -R`,	     In,	${*:2}" >> $DIR$FILE
elif [ "$1" == 'out' ]
	then
	echo "Found $FILE punching OUT out at `date -R`"
	echo "`date -R`,	     Out,	${*:2}" >> $DIR$FILE
elif [ "$1" == 'see' ]
	then
	echo -e "`more $DIR$FILE`"
else
echo "Missing arguments in or out."
fi

