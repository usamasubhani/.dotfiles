#!/bin/bash

pape=$(ls ~/Pictures/Wallpapers | shuf -n 1)

mv ~/Pictures/Wallpapers/$pape ~/Pictures/pape

feh --bg-fill ~/Pictures/pape
