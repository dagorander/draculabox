#!/bin/bash

FOLDER="~/Pictures/Screenshots/"
DATE=$(date +%Y-%m-%d_%H:%M:%S)
OUTPUT="${DATE}.png"

cd ~/Pictures/Screenshots/

import ${OUTPUT}
