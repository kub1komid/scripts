#!/usr/bin/env bash

CONFIG_PATH="/DATA/AppData/frigate/config/config.yml"

# Ensure the directory exists
mkdir -p $(dirname $CONFIG_PATH)

# Write the content to config.yml
cat > $CONFIG_PATH <<EOL
mqtt:
  host: mqtt.server.com
cameras:
  cam1:
    ffmpeg:
      inputs:
        - path: rtsp://admin:password@192.168.137.79/axis-media/media.amp
          roles:
            - detect
    detect:
      width: 1280
      height: 720
EOL

echo "Configuration written to $CONFIG_PATH"