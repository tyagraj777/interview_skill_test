#Validates: File handling, regex, and string manipulation.

import re

log_file = "server.log"
with open(log_file, "r") as file:
    logs = file.readlines()

error_logs = [line for line in logs if re.search(r"ERROR", line)]
print("Error Logs:")
print("\n".join(error_logs))
