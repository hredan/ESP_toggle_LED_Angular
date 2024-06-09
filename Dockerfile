FROM node:22-alpine
RUN npm install -g @angular/cli
RUN apk add bash
RUN apk add git

# get last version of npm
RUN npm install -g npm@latest

#clone ESP_toggle_LED_Angular_Frontend with submodules
RUN mkdir /home/workspace
RUN git clone --recurse-submodules https://github.com/hredan/ESP_toggle_LED_Angular_Frontend.git /home/workspace/ESP_toggle_LED_Angular_Frontend

#install node packages
RUN cd /home/workspace/ESP_toggle_LED_Angular_Frontend/ESP_Angular_Frontend && npm install

#install chromium for ng test
RUN apk add chromium
ENV CHROME_BIN=/usr/bin/chromium

# WORKDIR /home/workspace/ESP_toggle_LED_Angular_Frontend
# ng serve port
# EXPOSE 4200

# ng test port
# EXPOSE 9876

# npm install -g npm@10.8.1

# docker build -t angular_18_esp_toogle_led .
# docker run -p 4200:4200 -p 9876:9876 -it -v %cd%:/home/workspace angular_18_esp_toogle_led sh
# docker run -it -workdir /home/workspace/ESP_toggle_LED_Angular_Frontend angular_18_esp_toogle_led sh