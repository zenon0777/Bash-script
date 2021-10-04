#!/bin/bash

PS3="Enter a chore number."

while true; do
    select choice in ErrorLogFiles AddUser LastLogins TopTenVar TopTenHomes Exit; do
        case $choice in
        ErrorLogFiles)
            grep -i error /var/log/*
            break
            ;;
        AddUser)
            ./adduser.sh
            break
            ;;
        LastLogins)
            last -10
            break
            ;;
        TopTenHomes)
            ./topten.sh Desktop
            break
            ;;
        TopTenVar)
            ./topten.sh /var/*
            break
            ;;
        Exit)
            exit 0
            break
            ;;
        esac
    done
done
