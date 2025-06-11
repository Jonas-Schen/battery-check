#!/bin/bash

# Function to check battery status
check_battery() {
  # Check the battery status
  state=$(cat /sys/class/power_supply/BAT1/status)

  # If the status is "Discharging", it makes a sound
  if [ "$state" == "Discharging" ]; then
    paplay ./assets/sounds/Orion.ogg
  fi
}

# Infinite loop to check battery continuously
while true; do
  check_battery
  # Wait 5 seconds before checking again
  sleep 5
done
