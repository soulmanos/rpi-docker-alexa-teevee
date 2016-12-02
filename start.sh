#!/bin/bash

#docker build -t soulmanos/rpi-docker-alexa-teevee .
docker run -d \
    -p 1900:1900/udp \
    -p 57621:57621/udp \
    -p 52000:52000 \
    --net=host \
    --name rpi-docker-alexa-teevee \
    soulmanos/rpi-docker-alexa-teevee
