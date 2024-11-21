#Validates: Loops, tar command, and file management.

#!/bin/bash
SOURCE_DIR="/var/www/html"
BACKUP_DIR="/backup"
DATE=$(date +"%Y%m%d")
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

mkdir -p $BACKUP_DIR
tar -czf $BACKUP_FILE $SOURCE_DIR

if [ $? -eq 0 ]; then
  echo "Backup successful: $BACKUP_FILE"
else
  echo "Backup failed!"
fi
