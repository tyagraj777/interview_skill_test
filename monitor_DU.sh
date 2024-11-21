#Validates: File system navigation, conditionals, and command-line tools.

#!/bin/bash
THRESHOLD=80
df -h | awk '{if ($5+0 > '$THRESHOLD') print $0}' > high_disk_usage.txt

if [ -s high_disk_usage.txt ]; then
  echo "Warning: Disk usage above $THRESHOLD%."
else
  echo "Disk usage is under control."
fi
