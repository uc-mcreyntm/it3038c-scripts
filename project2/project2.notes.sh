top -b -n 1 | awk 'FNR == 3 {print "CPU Usage: " $2}' #Grab CPU Information
ip a | grep inet | grep global | awk '{print "IP Address: "$2}' # Grab IP address / subnet
top -b -n 1 | awk 'FNR == 1 {print "Uptime: " $5 " days"}' # Uptime in days
top -b -n 1 | awk 'FNR == 1 {print substr ($7,0,2) " hours"}' # Uptime hours
top -b -n 1 | awk 'FNR == 1 {print substr ($7,4,2) " hours"}' # Uptime in minutes
top -b -n 1 | awk 'FNR == 4 {print "Available RAM " $10 "MB"}' # Free RAM in cache
top -b -n 1 | awk 'FNR == 4 {print "Available RAM " $6 "MB"}' # Free RAM
hostname # Hostname


Print RAM usage from CACHE and FREE
===========================
#!/bin/bash

CACHE=`top -b -n 1 | awk 'FNR == 4 {print $10}'`;
FREE=`top -b -n 1 | awk 'FNR == 4 {print $6}'`;

TOTAL=`echo $CACHE $FREE | awk '{print $1 + $2}'`;
echo $TOTAL
===========================

cat <(ssh proxmox 'top -b -n 1' | awk 'FNR == 3 {print $2}') #Remote Machine