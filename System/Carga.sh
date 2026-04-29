#1 carga_ui() {}

PruebaSystemCopyCommands() {
 Inicio
}


Inicio() {
  # PASO 1 - COPIA DE SEGURIDAD
  contenido=( "XD" "Lol" )
  contenido_texto=$(printf "%s\n" "${contenido[@]}")
  UI "Cuadro" "COPIA" "$contenido_texto"

  log "Creando copia de seguridad..."
  if cp ~/.bashrc Copias/copia_seguridad.sh 2>/dev/null; then
    log "Copia de seguridad exitosa =D"
    Paso2
  else
    log "No se pudo crear una copia de seguridad."
    read -p "> " respuesta

    if [[ "$respuesta" == "Y" || "$respuesta" == "y" ]]; then
      log "lol"
    elif [[ "$respuesta" == "N" || "$respuesta" == "n" ]]; then
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

}

Paso2() {
  UI "Barra_Carga" "SYSTEM COPY COMMANDS" "${contenido[@]}"

}
