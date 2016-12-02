FROM hypriot/rpi-python

MAINTAINER "the.soulman.is@gmail.com"

RUN apt-get update && apt-get install -y git

# git clone to dir, all files are added to root of dir
RUN mkdir -p /usr/src/
RUN git clone https://github.com/soulmanos/rpi-docker-alexa-teevee.git /usr/src/rpi-docker-alexa-teevee
WORKDIR /usr/src/rpi-docker-alexa-teevee

# Install app dependencies

# Expose Ports
EXPOSE 1900,57621,52000

# Run script/application
CMD ["python", "/usr/src/rpi-docker-alexa-teevee/<scriptName>"]

