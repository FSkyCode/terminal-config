# PROTOTIPO
BASHRC="$HOME/.bashrc"
source carga.sh

# PREGUNTAS
pregunta_A() {
  while true; do
    log "Ha habido distintos errores durante la carga, ¿seguir?"
    read -p "Y|y / N|n> " respuesta_A

    case "$respuesta_A" in
      Y|y)
        log "Todo listo, disfrute sus comandos!"
        sleep 1
        clear
        break
        ;;
      N|n)
        log "Entendido, eliminando modificaciones..."
        cp copia_seguridad "$BASHRC"
        sleep 3
        clear
        break
        ;;
      *)
        log "Inserte una opcion correcta, por favor"
        ;;
    esac
  done
}

pregunta_B() {
  log "Todo ha sido correctamente cargado, por favor prosiga"
  read -n 1 -s -r -p "> Presione cualquier tecla"
  clear
}

# FINAL
SystemCopyCommands() {
  source systemCopyCommands.sh
  cargar_sistema
}


