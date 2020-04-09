#!/bin/bash
docker build --tag arduino-cli-esp32 arduino-cli-esp32
docker run -it -v $(pwd):/github/workspace arduino-cli-esp32 compile dragonfire esp8266:esp8266:nodemcuv2 'NeoPatterns' 'Adafruit NeoPixel'