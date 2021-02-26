#!/usr/bin/env sh
. ./your_config.sh

#minicom -b 57800 -D /dev/ttyUSB0
picocom --b 57800 /dev/ttyUSB0
