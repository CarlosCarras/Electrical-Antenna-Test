#!/usr/bin/env bash

i2cset -y 2 0x31 0xAD                 	# command: arm the antenna syst
i2cset -y 2 0x31 0xA1  0                # command: deploy antenna 1
i2cget -y 2 0x31 0xC3  w               	# read: get status to confirm arm (2 bytes)