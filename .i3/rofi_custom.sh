#!/bin/bash
action=$(echo -e "ompd\nompd-git\nspotify\ntransmission\nnicotine\nstreamstudio\nnetflix\nmps-youtube" | rofi -dmenu -p "custom:")

if [[ "$action" == "ompd" ]]
then
    /usr/bin/google-chrome-stable --app="http://127.0.0.1/OMPD"
fi

if [[ "$action" == "ompd-git" ]]
then
    /usr/bin/google-chrome-stable --app="http://127.0.0.1/ompd_test"
fi

if [[ "$action" == "transmission" ]]
then
    /usr/bin/google-chrome-stable --app="http://localhost:9091/transmission/web/"
fi

if [[ "$action" == "streamstudio" ]]
then
    streamstudio
fi

if [[ "$action" == "netflix" ]]
then
    /usr/bin/google-chrome-stable --app="https://www.netflix.com"
fi

if [[ "$action" == "mps-youtube" ]]
then
    urxvtc -e mpsyt
fi

if [[ "$action" == "nicotine" ]]
then
    nicotine
fi

if [[ "$action" == "spotify" ]]
then
    blockify
fi
