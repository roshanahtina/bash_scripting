#!/bin/bash
MYLOG=$1
LOG_TARGET="/home/$USER/LOG_BACKUP"
LOG_SOURCE="/usr/sbin/*"
#MYLOG="/home/$USER/LOG_BACKUP_FILE.txt"

echo "Executing BEFORE work done $(date +"%D %T")"

echo "Copy the file from $LOG_SOURCE to $LOG_TARGET"
mkdir $LOG_TARGET
cp -v $LOG_SOURCE $LOG_TARGET >> $MYLOG 2>&1
echo "Coyping the file from $LOG_SOURCE to $LOG_TARGET is finished"

echo "Executing AFTER work done $(date +"%D %T")"

exit
