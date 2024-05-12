#!/usr/bin/env bash

current_vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | cut -f 2 -d ".")
echo " ${current_vol}%"
