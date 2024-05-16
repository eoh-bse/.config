#!/usr/bin/env bash

op=$1
max=$(brightnessctl m)
current=$(brightnessctl g)
five_percent=$((max/20))
if [ -z $op ]; then
	echo 󰃟  $(($current*100/$max))%
	exit 0
fi

if [[ $op == "u" ]]; then
	new_val=$((current + $five_percent))
	brightnessctl s $(($new_val>$max?$max:$new_val))
else
	new_val=$((current - $five_percent))
	brightnessctl s $(($new_val<0?0:$new_val))
fi
