#!/usr/bin/env bash

read -p 'Antenna To Deploy: ' ant


case "$ant" in

  "1")
    echo "Deploying antenna 1."
    addr=0xA1
    ;;

  "2")
    echo "Deploying antenna 2."
    addr=0xA2
    ;;

  "3")
    echo "Deploying antenna 3."
    addr=0xA3
    ;;

  "4")
    echo "Deploying antenna 4."
    addr=0xA4
    ;;

  *)
    echo "The antenna number entered was incorrect. Exiting..."
    exit 1
    ;;
esac


i2cset -y 2 0x31 0xAD                 	# command: arm the antenna syst
i2cset -y 2 0x31 $addr 0                # command: deploy the desired antenna 
i2cget -y 2 0x31 0xC3  w               	# read: get status to confirm arm (2 bytes)