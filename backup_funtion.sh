#!/bin/bash
LOG_TARGET="/home/$USER/LOG_BACKUP"
LOG_SOURCE="/usr/sbin/*"
LOG_FILE="/home/$USER/LOG_BACKUP_FILE.txt"

# use function in diffrent ways
#function init {
init () {
echo "Copy the file from $LOG_SOURCE to $LOG_TARGET"
mkdir $LOG_TARGET
}

#Call the init function to create a dir
init

cp -v $LOG_SOURCE $LOG_TARGET >> $LOG_FILE 2>&1
echo "Coyping the file from $LOG_SOURCE to $LOG_TARGET is finished"
exit
