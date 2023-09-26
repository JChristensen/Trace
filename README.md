# Bash traceroute script  
https://github.com/JChristensen/Trace  
README file  

## License
Bash Traceroute Script Copyright (C) 2023 Jack Christensen GNU GPL v3.0

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License v3.0 as published by the Free Software Foundation.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/gpl.html>

## Description
This is just a simple script to run traceroute on a given IP address and log the results to a file. An "OK" message is written to the log if the target IP is reached; else an "error" message is written. In either case, the output from traceroute is written to the log file.

One command line argument is needed, the IP address to trace.

The script can be scheduled with cron to run as often as needed.

The traceroute command may not be installed by default on some Linux distributions. If not present, install it with (e.g. for Debian and derivatives): sudo apt install traceroute