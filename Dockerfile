FROM node:latest

WORKDIR /
RUN wget https://github.com/Chinachu/Chinachu/archive/refs/heads/gamma.zip
RUN unzip gamma.zip

WORKDIR /Chinachu-gamma
RUN echo 1 | ./chinachu installer

COPY /entrypoint.sh ./
RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["/Chinachu-gamma/entrypoint.sh"]
