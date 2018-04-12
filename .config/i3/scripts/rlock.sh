#!/usr/bin/bash
scrot -z /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
cd ~/.config/i3/scripts/png
ls |sort -R |tail -$N |while read file; do
    convert $file -resize 50% /tmp/icon.png
    convert /tmp/screen.png /tmp/icon.png -gravity center -composite -matte /tmp/screen.png 
    break
done
i3lock -u -i /tmp/screen.png
rm /tmp/screen.png
rm /tmp/icon.png
