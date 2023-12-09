#!/bin/bash

COUNTER=$1
COUNTER=$(COUNTER*60)

echo "COUNTING till 10..."

while [ $COUNTER -lt 300 ]; do
	echo "Counting start...: $COUNTER"
	((COUNTER--))
done

exit 127
