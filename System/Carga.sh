#1 carga_ui() {}
PruebaSystemCopyCommands() {
  # COPIA DE SEGURIDAD
  contenido=( "XD" "Lol" )
  UI "Cuadro" "COPIA" contenido

  log "Creando copia de seguridad..."
  if cp ~/.bashrc Copias/copia_seguridad.sh 2>/de>
    log "Copia de seguridad exitosa =D"
#
  else
    log "No se pudo crear una copia de seguridad."
    read -p "> " respuesta

    if [[ "$respuesta" == "Y" || "$respuesta" == >
#

    elif [[ "$respuesta" == "N" || "$respuesta" =>
      log "Pausando proceso..."
      sleep 2
      clear

    else
      log "Introduzca una respuesta válida (y/n)"
    fi
  fi

  # CARGA
  contenido=(
    "Recuerde estar en Terminal-Config!"
    "Este proceso sera corto, podra configurar lo necesario."
  )
  copiar=(
  "System/modulo.sh"
  "Codigos/modulo.sh"
  )

 # UI "1" "SYSTEM COPY COMMANDS" "${contenido[@]}"
}
