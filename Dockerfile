FROM node:22-slim

# get last version of npm
RUN npm install -g npm@latest
RUN npm install -g @angular/cli

RUN apt update
RUN apt -y install git
RUN apt -y install curl

#clone ESP_toggle_LED_Angular_Frontend with submodules
RUN mkdir /home/workspace
RUN git clone --recurse-submodules https://github.com/hredan/ESP_toggle_LED_Angular.git /home/workspace/ESP_toggle_LED_Angular

#install node packages
RUN cd /home/workspace/ESP_toggle_LED_Angular/ESP_Angular_Frontend && npm install

#install chromium for ng test
RUN apt -y install chromium
ENV CHROME_BIN=/usr/bin/chromium

# WORKDIR /home/workspace/ESP_toggle_LED_Angular
# ng serve port
# EXPOSE 4200

# ng test port
# EXPOSE 9876

# npm install -g npm@10.8.1

# docker build -t angular_18_esp_toogle_led .
# docker run -p 4200:4200 -p 9876:9876 -it -v %cd%:/home/workspace angular_18_esp_toogle_led sh
# docker run -it --workdir /home/workspace/ESP_toggle_LED_Angular angular_18_esp_toogle_led bash