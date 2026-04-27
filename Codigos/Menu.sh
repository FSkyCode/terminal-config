# -- MENUS DINAMICOS O ESPECIALES --
# COMANDOS U HELPERS
UI() {
  tipo="$1"
  titulo="$2"
  contenido="$3"

  progreso="$4"
  total="$5"

  case "$tipo" in
    Cuadro)
      CUADRO "$titulo" "$contenido"
    Barra_Progreso)
      BARRA_PROGRESO "$progreso" "$total"
      ;;
    *)
      helpUI
      ;;
  esac
}

helpUI() {
  echo "-- TIPOS DE UI --"
  echo "1 = Cuadro"
  echo "2 = Barra_Progreso"
  echo "-- ARGUMENTOS PARA UI --"
  echo "1 = Tipo"
  echo "2 = Titulo/Valor 1"
  echo "3 = Contenido/Valor 2"
}

# TIPO 1 - CUADRO DE CARGA
LOG_LINE=6

log() {
  tput cup $LOG_LINE 4
  tput el
  echo "-> $1"
  ((LOG_LINE++))
  [[ $LOG_LINE -gt 15 ]] && LOG_LINE=6
}

texto_mitad() {

}

CUADRO() {
  clear
  echo "================================="
  echo "$1"
  echo "================================="
  echo ""
  echo "$2"
  echo ""
  echo "+-------------------------------+"
  for i in {1..10}; do
    echo "|                               |"
  done
  echo "+-------------------------------+"
  echo ""
}

# TIPO 2 - BARRA DE PROGRESO
BARRA_PROGRESO() {
  local progress=$1
  local total=$2
  local width=30

  local percent=$((progress * 100 / total))
  local filled=$((progress * width / total))

  tput cup 17 2
  printf "[%-${width}s] %d%%" "$(printf '#%.0s' $(seq 1 $filled))" "$percent"
}

# TIPO 2 - 
