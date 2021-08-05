FROM node:latest

WORKDIR /
RUN wget https://github.com/Chinachu/Chinachu/archive/refs/heads/gamma.zip
RUN unzip gamma.zip

WORKDIR /Chinachu-gamma
RUN echo 1 | ./chinachu installer

RUN npm install pm2 -g
RUN mkdir log

RUN chown node:node -R .

CMD ["pm2-runtime", "processes.json"]