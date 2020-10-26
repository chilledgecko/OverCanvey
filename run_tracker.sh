#!/bin/bash
#
# This is just a simple script that loads the correct python enviroment
# and then loops forever restarting the tracker program if it ever exits.
#

cd /home/pi/OverCanvey
source py3/bin/activate


while :
do
	echo
	echo '***** Restarting OverCanvey ' `date --utc --rfc-3339=ns`
	echo

	python3 tracker.py

	echo
	echo '***** OverCanvey exited ' `date --utc --rfc-3339=ns`
	echo

	sleep 5

done

