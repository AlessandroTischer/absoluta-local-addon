#!/bin/bash
set -e

# Parse /data/options.json and export variables
if [ -f /data/options.json ]; then
    export MQTT_ADDRESS=$(jq -r '.MQTT_ADDRESS // empty' /data/options.json)
    export MQTT_PORT=$(jq -r '.MQTT_PORT // empty' /data/options.json)
    export MQTT_USERNAME=$(jq -r '.MQTT_USERNAME // empty' /data/options.json)
    export MQTT_PASSWORD=$(jq -r '.MQTT_PASSWORD // empty' /data/options.json)
    export ALARM_ADDRESS=$(jq -r '.ALARM_ADDRESS // empty' /data/options.json)
    export ALARM_PIN=$(jq -r '.ALARM_PIN // empty' /data/options.json)
    export ALARM_PORT=$(jq -r '.ALARM_PORT // empty' /data/options.json)
    export LOG_LEVEL=$(jq -r '.LOG_LEVEL // empty' /data/options.json)
else
    echo "/data/options.json not found! Environment variables will not be set."
fi

# Run the Java application
exec java $JAVA_OPTS -cp "app.jar:lib/jars/*:secured/*" Application
