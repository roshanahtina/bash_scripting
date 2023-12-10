#!/bin/bash
LOG_TARGET="/home/$USER/LOG_BACKUP"
LOG_SOURCE="/usr/sbin/*"
LOG_FILE="/home/$USER/LOG_BACKUP_FILE.txt"

function ctrlc {
echo "Copy the file from $LOG_SOURCE to $LOG_TARGET" | tee $LOG_FILE 2>&1
echo "Time of the Execution $(date +"%D %T")" | tee -a $LOG_FILE 2>&1
echo "Sleeping for 10 Sec..."
sleep 10
mkdir $LOG_TARGET
cp -v $LOG_SOURCE $LOG_TARGET >> $LOG_FILE 2>&1
echo "RECEIVED SIGINT" >> $LOG_FILE  2>&1 
}

# Calling the function of ctrlc
ctrlc
trap ctrl SIGINT
echo "Coyping the file from $LOG_SOURCE to $LOG_TARGET is finished"
exit
