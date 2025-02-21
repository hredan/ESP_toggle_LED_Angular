FROM node:20-slim

# get last version of npm
RUN npm install -g npm@latest
RUN npm install -g @angular/cli

RUN apt update
RUN apt -y install git
RUN apt -y install curl
RUN apt -y install zip

#clone ESP_toggle_LED_Angular_Frontend with submodules
RUN mkdir /home/workspace
RUN git clone https://github.com/hredan/eep-build-action.git /home/workspace/eep-build-action
RUN git clone https://github.com/hredan/eef-carefree-action.git /home/workspace/eef-carefree-action
#RUN git clone --recurse-submodules https://github.com/hredan/ESP_toggle_LED_Angular.git /home/workspace/ESP_toggle_LED_Angular

#install node packages
#RUN cd /home/workspace/ESP_toggle_LED_Angular/ESP_Angular_Frontend && npm install

#install chromium for ng test
RUN apt -y install chromium
ENV CHROME_BIN=/usr/bin/chromium

# WORKDIR /home/workspace/ESP_toggle_LED_Angular
# ng serve port
# EXPOSE 4200

# ng test port
# EXPOSE 9876

# npm install -g npm@10.8.1

# docker build -t angular_esp_toogle_led .
# docker run --name angular_dev_env -p 4200:4200 -p 9876:9876 -it -v .:/home/workspace/ESP_TOGGLE_LED_ANGULAR --workdir /home/workspace/ESP_TOGGLE_LED_ANGULAR angular_esp_toogle_led bash
# docker exec -it angular_dev_env ng build
# mkdir ./ESP_toggle_LED_Backend/data
# cp -r ./ESP_Angular_Frontend/dist/my-app/browser/* ./ESP_toggle_LED_Backend/data