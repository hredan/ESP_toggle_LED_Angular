#!/bin/bash
docker exec -it angular_dev_env ng build

rm -rf ./ESP_toggle_LED_Backend/data
mkdir ./ESP_toggle_LED_Backend/data
cp -r ./ESP_Angular_Frontend/dist/my-app/browser/* ./ESP_toggle_LED_Backend/data