#!/bin/bash

pape=$(ls ~/Pictures/Wallpapers | shuf -n 1)

mv ~/Pictures/Wallpapers/$pape ~/Pictures/pape.png

#feh --bg-fill ~/Pictures/pape

wal -i ~/Pictures/pape.png
