#!/bin/sh


appname=$1
summary=$2
body=$3
icon=$4
urgency=$5

echo $appname
echo $summary
echo $body
echo $icon
echo $urgency

exclude_list="Spotify test"
sound=~/.config/dunst/sound/

case "$urgency" in
    "CRITICAL") 
        sound+="critical.mp3"
        ;;
    "LOW") 
        sound+="low.mp3"
    ;;
    "NORMAL"|*) 
        # sound+="normal.mp3"
        sound+="gawr_gura_a.mp3"
    ;;
esac

case "$appname" in
    "Spotify" | "test") :
    ;;
    *) paplay $sound
    ;;
esac
