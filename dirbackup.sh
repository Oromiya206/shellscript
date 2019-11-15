#!/bin/bash
#This script backs up a directory of your choice

echo -e "What directory do you want to back up?-->\c"

fi

echo "Performing backup..."
sleep 3
tar -zcvf ~/backupfile.tar.gz $1

echo "Backup completed successfully to ~/backupfile.tar.gz"
