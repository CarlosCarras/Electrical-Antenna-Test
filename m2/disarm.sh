#!/usr/bin/env bash

i2cset -y 2 0x32 0xAC                 	# command: disarm the antenna system
i2cget -y 2 0x32 0xC3  w               	# read: get status to confirm arm (2 bytes)

echo "Disarmed the antenna system."
