#!/bin/bash
####script to be executed every 1 min to monitor system load, and add it to file /var/log/system-load. The script must be run using root.


# check if the user who run the script is the root
[ ${EUID} -ne 0 ] && exit 1

while true
do

    # Get the system load average for the last minute
    LOAD=$(uptime)

    # Get the current date and time
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

    # Writing the system load and timestamp to the log file
    echo "${TIMESTAMP} - System load: ${LOAD}" >> /var/log/system-load.log

    # logging every 60 seconds
    sleep 60
done

exit 0