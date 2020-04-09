#!/bin/bash
DEV="${1:-/dev/ttyUSB0}"

docker build --tag arduino-cli-esp32 arduino-cli-esp32
docker run -it --device=$DEV -v $(pwd):/github/workspace arduino-cli-esp32 upload dragonfire esp8266:esp8266:nodemcuv2 $DEV