SystemCopyCommands() {
  echo "SystemCopyCommands ejecutandose... (copiando)"
  if rm ~/.bashrc; then
    echo ""
    if cat codigos.sh > ~/.bashrc; then
      echo "Exitoso!"
    else
      echo "" # en cargaIm se encarga de los errores de la ejecucion lol
    fi
  else
    "Error desconocido, abortando"
  fi
}

# SISTEMAS DISPONIBLES
skymain="> Proyecto-G-nesis-ASISTENTE-"

cargaIm() {
  # Buscar índice
  for i in "${!list[@]}"; do
    if [[ "${list[$i]}" == "$skymain" ]]; then
      skymainHelper="$i"
    fi
  done
}

SystemCopyCommands() {
  
  echo "Empezando la carga de comandos personalizados..."
  echo "Recuerde estar en TERMINAL-CONFIG =D"

  echo "Cargando $IMPORTANTE"

  if source "$IMPORTANTE"; then
    echo "Se encontró el código =D"

    SystemCopyCommands && echo "Uso de SystemCopyCommands exitoso =D"

    source ~/.bashrc
    echo "Sistema del usuario actualizado!"

    echo "Vuelva pronto!"
  else
    echo "❌ Error cargando IMPORTANTE"
  fi

  echo "Lamentamos la falla, use:"
  echo "SkyMain: skymain $skymainHelper"
  echo "BlueMain: No disponible"
  echo "SkyLun: No disponible"
  echo "Version: 0.0.3"
}
