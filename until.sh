#!/bin/bash
COUNTER=20
echo "Displaying the COUNTDOWN from 1..10"

until [ $COUNTER -lt 10 ]; do
	echo "The COUNTER is $COUNTER"
	#let COUNTER=COUNTER+1
	((COUNTER--))
done

exit


