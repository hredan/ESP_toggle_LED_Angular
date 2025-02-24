#!/bin/bash
#SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
#echo $SCRIPTPATH

cd ESP_toggle_LED_Backend
PATH=/home/workspace/eef-carefree-action/:$PATH
PATH=/home/workspace/eep-build-action/:$PATH

build_sketch.sh -s ESP_toggle_LED_Backend -c esp8266 -b d1_mini
GIT_URL=$(git config --get remote.origin.url)
GIT_COMMIT=$(git rev-parse HEAD)
GIT_TAG_BRANCH=$(git describe --exact-match --tags 2> /dev/null || git rev-parse --abbrev-ref HEAD)@local
create_build_info.sh -r $GIT_URL -s $GIT_COMMIT -n $GIT_TAG_BRANCH