#!/bin/bash
#SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
#echo $SCRIPTPATH

cd ESP_toggle_LED_Backend
PATH=/home/workspace/eef-carefree-action/:$PATH
PATH=/home/workspace/eep-build-action/:$PATH

build_sketch.sh -s ESP_toggle_LED_Backend -c esp8266 -b d1_mini
