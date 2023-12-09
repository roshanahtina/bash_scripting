#!/bin/bash
COUNTER=0
echo "Displaying the COUNTDOWN from 1..10"

while [ $COUNTER -lt 10 ]; do
	echo "The COUNTER is $COUNTER"
	#let COUNTER=COUNTER+1
	((COUNTER++))
done

exit


