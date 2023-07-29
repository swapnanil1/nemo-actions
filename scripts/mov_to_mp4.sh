#!/bin/bash
EXT=.mov
mkdir -p converted
for f in *$EXT; do
NAME=$(echo $f | sed "s/$EXT//g")
ffmpeg -i "$f" -c:v libx264 -preset veryslow -crf 0 -f mp4 converted/"$NAME".mp4
done
