#!/bin/bash

COUNTER=$1

echo "COUNTING till 10..."

while [ $COUNTER -lt 10 ]; do
	echo "Counting start...: $COUNTER"
	((COUNTER++))
done

exit 127
