#!/bin/bash
#docker exec -it angular_dev_env ng build

cd ESP_Angular_Frontend
ng build
rm -rf ../ESP_toggle_LED_Backend/data
mkdir ../ESP_toggle_LED_Backend/data
cp -r ./dist/my-app/browser/* ../ESP_toggle_LED_Backend/data