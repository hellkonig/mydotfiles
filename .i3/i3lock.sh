#!/bin/bash
scrot ./space.jpg
convert ./space.jpg -blur  2x2 reality.jpg 
i3lock -i reality.jpg
