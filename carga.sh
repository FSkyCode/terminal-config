# CUADRO DINAMICO
LOG_LINE=6

log() {
  tput cup $LOG_LINE 2
  printf "%-30s" "$1"
  ((LOG_LINE++))

  # Si se llena el cuadro, vuelve arriba
  if (( LOG_LINE > 15 )); then
    LOG_LINE=6
  fi
}

loader_ui() {
  clear
  echo "================================="
  echo "       CARGANDO ARCHIVOS"
  echo "================================="
  echo ""
  echo "+-------------------------------+"
  for i in {1..10}; do
    echo "|                               |"
  done
  echo "+-------------------------------+"
  echo ""
}

# CARGAR ARCHIVOS
loading_bar() {
  local progress=$1
  local total=$2
  local width=30

  local percent=$((progress * 100 / total))
  local filled=$((progress * width / total))

  tput cup 17 2
  printf "[%-${width}s] %d%%" "$(printf '#%.0s' $(seq 1 $filled))" "$percent"
}

# Inicio de la cadena domino
cargar_sistema() {
  loader_ui

  copiar=(
    "Basico"
    "SkyMain"
    "BlueMain"
  )

  total=${#copiar[@]}
  progreso=0
  errores=0

  for archivo in "${copiar[@]}"; do
    if cat "$archivo" >> ~/.bashrc; then
      ((progreso++))
      log "Copiando $archivo"
      loading_bar $progreso $total
      sleep 0.3
    else
      log "Error copiando $archivo"
      ((errores++))
      sleep 0.5
    fi
  done

  if (( errores > 0 )); then
    preguntar_A
  else
    preguntar_B
  fi
}
