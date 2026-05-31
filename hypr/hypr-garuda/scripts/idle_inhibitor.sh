#!/bin/bash

a=$(pidof hypridle)
if [[ $a ]]
then
    killall -9 hypridle
    notify-send "idle inhibitor activated"
else
    notify-send "idle inhibitor deactivated"
    hypridle &> /dev/null
fi
