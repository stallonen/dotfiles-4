#!/bin/bash
#
scrot -b -u -e 'mv $f ~/screenshots'
notify-send 'screenshot of a focused window saved!'
