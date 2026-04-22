# Inicio de la cadena domino
SystemCopyCommands() {
  contenido=(
    "Recuerde estar en Terminal-Config!"
    "Este proceso sera corto, podra configurar que una vez terminada salgas de ella sin tener que presionar nada =D"
  )
  UI "1" "SYSTEM COPY COMMANDS" "$contenido"

  copiar=(
    "Codigos/*.sh"
    "System/*.sh"
    #".sh"
  )

  total=${#copiar[@]}
  progreso=0
  errores=0

  log "Creando copia de seguridad..."
  if cp ~/.bashrc Copias/copia_seguridad.sh 2>/dev/null; then
    log "Copia de seguridad exitosa =D"
    copiar_archivos
  else
    log "No se pudo crear una copia de seguridad, continuar o pausar? (c/p)"
    read -p "> " respuesta
    if [[ "$respuesta" == "c" ]]; then
      copiar_archivos
    elif [[ "$respuesta" == "p" ]]; then
      log "Pausando proceso..."
      sleep 2
      clear
    else
      log "Introduzca una respuesta disponible (y/n)"
    fi
  fi
}
