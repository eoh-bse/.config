#!/usr/bin/env bash

current_vol=""
function get_vol() {
	local vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | cut -c 9,11,12)
	if [[ $vol == 0* ]]; then
		vol=$(echo $vol | cut -c 2,3)
	fi
	echo $vol
}

current_vol=$(get_vol)
while [ "$current_vol" == "" ]; do
	sleep 0.2
	current_vol=$(get_vol)
done

echo "  ${current_vol}%"
