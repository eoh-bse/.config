#!/usr/bin/env bash

current_vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | cut -c 9,11,12)
if [[ $current_vol == 0* ]]; then
	current_vol=$(echo $current_vol | cut -c 2,3)
fi
echo "  ${current_vol}%"
