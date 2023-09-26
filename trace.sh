#!/bin/bash
# Run a traceroute, log the results to a file.
# Requires one command line argument, the IP address to trace.
# J.Christensen 26Sep2023

usage()
{
    PROGNAME=$(basename $0)
    echo "$PROGNAME usage: $PROGNAME IP-TO-TRACE" >&2
    return
}

# ensure we have one command line argument
if [[ $# -ne 1 ]]; then
    usage
    exit 1
fi

# get the ip to trace
ip=$1

# create a log file name
logfile="$(basename --suffix=.sh $0).log"

# write all script output to the log file
exec &>>$logfile

# start time stamp
date +"Start: %F %T"

# do the traceroute, capture the results in a variable
t=$(traceroute -n $ip)

# output the traceroute results
echo "$t"

# check to see if the target ip is in the traceroute results
newline=$'\n'
pattern="$newline[[:space:]]*[[:digit:]]+[[:space:]]+$ip[[:space:]]+"
if [[ "$t" =~ $pattern ]]; then
    echo "$(date +"End: %F %T") OK, found $ip"
else
    echo "$(date +"End: %F %T") error, did not find $ip"
fi
