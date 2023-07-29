#!/bin/bash
EXT=.mkv
mkdir -p converted
for f in *$EXT; do
NAME=$(echo $f | sed "s/$EXT//g")
ffmpeg -i "$f" -map 0:0 -map 0:1 -vcodec prores -q:v 2 -acodec pcm_s24le -q:a 0 -f mov converted/"$NAME".mov
done
