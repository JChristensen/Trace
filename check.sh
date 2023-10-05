#!/bin/bash
# Check trace logs for various errors.
# Run this script from the directory that contains the log files.
# J.Christensen 01Oct2023

echo -n "Count of script runs in yesterday's log: "
nrun=$(egrep -i "start:" trace.log.1 | wc -l)
echo "$nrun"

echo -e "\nChecking for errors..."
egrep -i "error" trace.log*
status=$?
if (( $status )); then
    if (( $status == 1 )); then
        echo "...none found."
    else
        echo "...grep error, status $status."
    fi
fi
