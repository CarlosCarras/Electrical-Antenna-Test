#!/usr/bin/env bash

read -p 'Antenna To Deploy with Override: ' ant


case "$ant" in

  "1")
    echo "Deploying antenna 1 with override."
    addr=0xBA
    ;;

  "2")
    echo "Deploying antenna 2 with override."
    addr=0xBB
    ;;

  "3")
    echo "Deploying antenna 3 with override."
    addr=0xBC
    ;;

  "4")
    echo "Deploying antenna 4 with override."
    addr=0xBD
    ;;

  *)
    echo "The antenna number entered was incorrect. Exiting..."
    exit 1
    ;;
esac


i2cset -y 2 0x32 0xAD                 	# command: arm the antenna syst
i2cset -y 2 0x32 $addr 0                # command: deploy the desired antenna with override
i2cget -y 2 0x32 0xC3  w               	# read: get status to confirm arm (2 bytes)