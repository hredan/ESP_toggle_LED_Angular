FROM node:22-alpine
RUN npm install -g @angular/cli
RUN apk add git
RUN mkdir /home/workspace
RUN cd /home/workspace
RUN git clone 

RUN apk add chromium
ENV CHROME_BIN=/usr/bin/chromium
# ng serve port
# EXPOSE 4200

# ng test port
# EXPOSE 9876

# npm install -g npm@10.8.1

# docker build -t angular_18 .
# docker run -p 4200:4200 -p 9876:9876 -it -v %cd%:/home/workspace angular_18 sh