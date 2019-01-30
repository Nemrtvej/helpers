#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
TOP_DISPLAY="to-be-redefined"
BOTTOM_DISPLAY="to-be-redefined"
source ${DIR}/config.ini


xrandr --output ${TOP_DISPLAY} --pos 0x0
xrandr --output ${BOTTOM_DISPLAY} --pos 0x1080

