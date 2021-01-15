#!/usr/bin/env bash

i2cset -y 2 0x32 0xAD                 	# command: arm the antenna syst
i2cset -y 2 0x32 0xA5  0                # command: deploy all antennas
i2cget -y 2 0x32 0xC3  w               	# read: get status to confirm arm (2 bytes)