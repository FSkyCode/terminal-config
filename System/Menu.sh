PruebaSystemCopyCommands() {

  contenido=(
    "Recuerde estar en Terminal-Config!"
    "Este proceso sera corto, podra configurar lo necesario."
  )

  UI "1" "SYSTEM COPY COMMANDS" "${contenido[@]}"

  copiar=(
    "Codigos/Basico.sh"
#    "System/*.sh"
  )

  total=${#copiar[@]}
  progreso=0
  errores=0

  log "Creando copia de seguridad..."

  if cp ~/.bashrc Copias/copia_seguridad.sh 2>/dev/null; then
    log "Copia de seguridad exitosa =D"
    copiar_archivos
  else
    log "No se pudo crear una copia de seguridad."
    read -p "> " respuesta

    if [[ "$respuesta" == "Y" || "$respuesta" == "y" ]]; then
      copiar_archivos

    elif [[ "$respuesta" == "N" || "$respuesta" == "n" ]]; then
      log "Pausando proceso..."
      sleep 2
      clear

    else
      log "Introduzca una respuesta válida (y/n)"
    fi
  fi
}
