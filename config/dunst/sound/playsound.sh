#!/bin/sh

exclude_list="Spotify test"
appname=$1

# if [[ $exclude_list != *"$appname"* ]]; then
#     echo "$1"
#     paplay ~/.config/dunst/sound/notification-sound.mp3
# fi


case "$appname" in
    "Spotify" | "test") :
    ;;
    *) paplay ~/.config/dunst/sound/notification-sound.mp3
    ;;
esac
