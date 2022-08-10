#!/bin/bash

date=$(date +"%d-%m-%Y"" at ""%H:%M:%S") #Retrive current date and time

logfile="LOG-IP.txt" # Log File name. Change this value if you want to use another filename.

ip=$(curl -s https://api.ipify.org) #Retrieve Public IP info

lastip=$(tail -n 1 $logfile | awk '{print $NF}') #This command read the logfile and stores the last string of the last line.

if [ -n "$lastip" ] # if $lastip not empty
    then
    if [ "$ip" != "$lastip" ] # if current public ip is different than public ip in logfile
        then
        echo -e "*** NEW IP ADDRESS DETECTED! ***"
        echo -e "*** $date - Public IP is --> $ip"
    else
        echo -e "$date - No new IP found: $ip"
    fi
else # if $lastip empty
    echo -e "*** Creation of a New Log File: $date ***"
    echo -e "*** $date - Public IP is --> $ip"
fi
