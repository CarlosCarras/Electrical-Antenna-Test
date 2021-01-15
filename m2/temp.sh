#!/usr/bin/env bash

i2cget -y 2 0x32 0xC0  w               	# read: get temperature
