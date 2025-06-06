#!/bin/bash
set -e

# Export environment variables from Home Assistant config
export JAVA_OPTS="${JAVA_OPTS}"
export CUSTOM_ENV="${CUSTOM_ENV}"
export MQTT_ADDRESS="${MQTT_ADDRESS}"
export MQTT_PORT="${MQTT_PORT}"
export MQTT_USERNAME="${MQTT_USERNAME}"
export MQTT_PASSWORD="${MQTT_PASSWORD}"
export ALARM_ADDRESS="${ALARM_ADDRESS}"
export ALARM_PIN="${ALARM_PIN}"
export ALARM_PORT="${ALARM_PORT}"

# Run the Java application
exec java $JAVA_OPTS -cp "app.jar:lib/jars/*:secured/*" Application
