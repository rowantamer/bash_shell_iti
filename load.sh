#!/bin/bash

# Get the current system load
load=$(uptime | awk '{print $10}')

# Get the current date and time
datetime=$(date +"%Y-%m-%d %H:%M:%S")

# Log the load and date/time to the system-load file
echo "$datetime Load Average: $load" >> /var/log/system-load