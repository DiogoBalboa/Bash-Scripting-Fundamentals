#!/bin/bash

echo "Select which option do you want to use from 1-5. If you want to leave please press 6"
echo 
echo "Option 1 - Check Network Interface Information"
echo "Option 2 - Ping a Host"
echo "Option 3 - Port Scan with Nmap"
echo "Option 4 - Display Routing Table"
echo "Option 5 - Traceroute to Host"
echo "Option 6 - Exit"

read user_input

while [ $user_input != "6" ];
do
    
    if [ $user_input == "1" ]; then
        ifconfig
        break
    
    elif [ $user_input == "2" ]; then
        echo "What Ip address do you want to ping ?"
        read ip_address
        ping "$ip_address" -c 5
        break
    
    elif [ $user_input == "3" ]; then
        echo "What is your Ip address"
        read ip_address
        sudo nmap -sn "$ip_address" 
        break

    elif [ $user_input == "4" ]; then
        ip route
        break

    
    elif [ $user_input == "5" ]; then
        echo "What is your Ip address"
        read ip_address
        traceroute "$ip_address"
        break
   
    else 
        echo "Option not valid. Please choose a option between 1-5. If you want to leave press 6" 
        read user_input
    fi


done

echo "Exiting program"
