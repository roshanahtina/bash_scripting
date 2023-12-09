#!/bin/bash
LOG_TARGET="/home/$USER/LOG_BACKUP"
LOG_SOURCE="/usr/sbin/"
LOG_FILE="/home/$USER/LOG_BACKUP_FILE.txt"

echo "Copy the file from $LOG_SOURCE to $LOG_TARGET"
mkdir $LOG_TARGET
#cp -v $LOG_SOURCE $LOG_TARGET >> $LOG_FILE 2>&1

cd $LOG_SOURCE

for i in $(ls); do
	cp -v $i $LOG_TARGET/$i-BACKUP >> $LOG_FILE 2>&1; done

echo "Coyping the file from LOG_SOURCE: $LOG_SOURCE to LOG_TARGET: $LOG_TARGET is finished"

exit 127
