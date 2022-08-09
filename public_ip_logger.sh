#!/bin/bash

date=$(date +"%d-%m-%Y"" at ""%H:%M:%S")

logfile="LOG-IP.txt" # Log File name

ip=$(curl -s https://api.ipify.org) #Retrieve Public IP info

lastip=$(tail -n 1 $logfile | awk '{print $NF}')

if [ -n "$lastip" ] #var not empty
    then
    if [ "$ip" != "$lastip" ]
        then
        echo -e "*** NEW IP ADDRESS DETECTED! ***"
        echo -e "*** $date - Public IP is --> $ip"
    else
        echo -e "$date - No new IP found: $ip"
    fi
else # var empty
    echo -e "*** Creation of a New Log File: $date ***"
    echo -e "*** $date - Public IP is --> $ip"
fi
