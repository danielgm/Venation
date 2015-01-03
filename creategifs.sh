#!/bin/sh

for f in output/*
do
  if [ -d $f ]
  then
    echo "Processing $f"
    rm "$f.gif" 2> /dev/null
    gifsicle --delay=5 --loop --colors 256 --resize 400x400 $f/*.gif > "$f.gif"
  fi
done

