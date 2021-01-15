#!/usr/bin/env bash

i2cget -y 2 0x32 0xC3  w               	# read: get status to confirm arm (2 bytes)