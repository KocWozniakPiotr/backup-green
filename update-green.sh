#!/bin/bash

# makes a backup and parse the string from DATE to the file name
backup ()
{
# declaring a variable with a date format
   DATE=$(date +%d-%m-%y)
   echo "`tar -czpf backups/greenlight-$DATE.bkp greenlight`"
}

beginUpdate ()
{
# amount of backups
   AMOUNT=$(ls backups | wc -l)

# path to the oldest modified backup file
   OLDEST=$(find ~/backups -type f | sort | head -n 1)

# If the amount of backups is less or equal 13, then a new backup will be made.
# Otherwise if the amount of backups is greater, remove the oldest one and make a new one
   if [ $AMOUNT -le 13 ]
   then
      echo "$(backup)"
   else
      echo "$(rm $OLDEST)"
      echo "$(backup)"
   fi
}
# Default repeat every hour (3600 seconds)
while true; do beginUpdate; sleep 3600; done