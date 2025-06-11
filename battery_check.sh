#!/bin/bash

# Função para verificar o estado da bateria
check_battery() {
  # Verifica o estado da bateria
  state=$(cat /sys/class/power_supply/BAT1/status)
  
  # Se o estado for "Discharging", emite um som
  if [ "$state" == "Discharging" ]; then
    paplay /home/jschen/Downloads/Orion.ogg
  fi
}

# Loop infinito para verificar a bateria continuamente
while true; do
  check_battery
  # Aguarda 5 segundos antes de verificar novamente
  sleep 5
done
