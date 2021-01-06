#!/bin/bash

MOD=2
MIN=$(date +"%M")
LN=$(((MIN % 2) + 1))
awk 'NR=='$LN'{printf "%s", $0}' ~/.config/polybar/quotes.txt
#awk 'NR=='$LN'{print, $0}' ~/.config/polybar/quotes.txt
