#!/bin/bash

notify-send  "Today is $(date +"%dth %b!")" "Now in  $(curl wttr.in/your_city?format=3)"
