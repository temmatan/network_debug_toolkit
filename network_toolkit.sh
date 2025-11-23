#!/bin/bash
while true; do

  echo "============================="
  echo "   Network Debug Toolkit"
  echo "============================="
  echo "1) Show local IP addresses"
  echo "2) Check internet connection"
  echo "3) Ping a server"
  echo "4) DNS Lookup"
  echo "5) Trace route"
  echo "6) Scan open ports"
  echo "7) Active network connections"
  echo "8) Show network interfaces"
  echo "9) Exit"
  echo
  read -p "Choose an option: " choice
  echo

  case $choice in
    1) ip a ;;
    2) ping -c 3 google.com ;;
    3) read -p "Enter host to ping: " host;
    echo
    ping -c 4 "$host" ;;
    4) read -p "Enter domain: " domain;
    echo
    nslookup "$domain" ;;
    5) read -p "Enter host: " host;
    echo
    traceroute "$host" ;;
    6) read -p "Enter host to scan: " host;
    echo
    nmap -F "$host" ;;
    7) ss -tulpn ;;
    8) ifconfig -a ;;
    9) echo "Exiting"
    break;;
    *) echo "Invalid option!" ;;
  esac

  echo
  read -p "Press Enter to return to menu.." dummy
  clear
done
