# PROTOTIPO
PROTOTIPO="> Proyecto-G-nesis-ASISTENTE-"
BASHRC="~/.bashrc"

# PREGUNTAS
pregunta_A() {
  echo "Ha habido distintos errores durante la carga, ¿seguir?"
  read -p "Y|y/N|n> " respuesta_A
  case respuesta_A; then
    Y|y) echo "lol"; break;
    N|n) echo "No lol"; break;
    *) echo "Inserte una opcion correcta, por favor";
}
pregunta_B() {
  echo "Todo ha sido correctamente cargado, por favor prosiga"
  read -p "> Presione cualquier tecla"
}

# FINAL
SystemCopyCommands() {
  echo "PROTOTIPO SKYSYSTEM"
  echo "SystemCopyCommands ejecutandose... (copiando)"
  echo "-     -"

  if source "$BASHRC"; then
    echo ""

    SystemCopyCommands && echo "Uso de SystemCopyComm"

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

SystemCopyCommands() {
  echo "Prototipo de SKYSYSTEM | Comandos"
  echo "SystemCopyCommands ejecutandose... (copiando)"
  echo "-     -"
  if rm ~/.bashrc; then
    echo "Eliminando ~/.bashrc..."
    if cat codigos.sh > ~/.bashrc; then
      echo "Exitoso! Sistema cargado!"
    else
      echo "Algo impide la eliminacion de ~/.bashrc, proceso cancelado." # en cargaIm se encarga de los errores de la ejecucion lol
    fi
  else
    "Error desconocido, abortando"
  fi
}


