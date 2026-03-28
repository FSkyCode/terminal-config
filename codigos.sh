# Alias u otros datos
alias sd='skycd'
IMPORTANTE="systemCopyCommands.sh"

# Comandos personalisados 

# Carga importante
cargaIm() {
  echo "Cargando $IMPORTANTE"
  source "$IMPORTANTE"
  echo "Ahora el del sistema"
  source ~/.bashrc
}

skycd() {
  if [ -z "$1" ]; then
    echo -e "\e[31mDigita una ubicacion lol\e[0m"
    return
  fi

  cd "$1" || {
    echo -e "\e[31mNo se pudo entrar a la carpeta\e[0m"
    return
  }

  echo -e "\e[32mEstas en $(pwd)\e[0m"
  echo -e "\e[34mArchivos:\e[0m"
  ls -a
}

back() {
  echo "Saliendo..."
  skycd ..
  echo "Ya saliste a $1... ahora sal a tocar pasto XD"
}

at() {
  echo "Atajo fuaaa"
  cd -
  echo "Atajo finalizado... y hablando de momos, se acabaron los momos"
}

skymainAllSaves() {
  cd
  skymain 1 && echo "A guardar SKYCARPETA"
  save
  for dir in /c/Users/juanf/REPOSITORIOS/*; do
    if [ -d "$dir/.git" ]; then
      echo "Repositorio: $dir"
      cd "$dir" || continue
      save
      echo "----------------"
    fi
  done
}


# Para SkyMain 
skymain() {
  case "$1" in
    1)
      skycd SKYCARPETA && echo "Estas en SKYCARPETA"
      ;;
    2)
      skycd REPOSITORIOS && echo "Estas en REPOSITORIOS lol"
      ;;
    3)
      skycd REPOSITORIOS/terminal-config && echo "Estas en REPOSITORIOS lol"
      ;;
    *)
      echo "Opciones:"
      echo "1 = SKYCARPETA"
      echo "2 = REPOSITORIOS (hacia abajo sus carpetas)"}
      echo "3 = terminal-config"
      ;;
  esac
}

# Para BlueMain 
bluemain() {
  case "$1" in
    1)
      skycd /storage/emulated/0/REPOSITORIOS && echo "📂 Estás en Downloads"
      ;;
    2)
      skycd /Documents && echo "📂 Estás en Documents"
      ;;
    *)
      echo "Opciones:"
      echo "1 = SKYCARPETA"
      echo "2 = REPOSITORIOS (hacia abajo sus carpetas)"
      echo "3 = "
      ;;
  esac
}

# Para SkyLun
skylun() {
  case "$1" in
    1)
      skycd REPOSITORIOS && echo "Estas en REPOSITORIOS lol"
      ;;
    2)
      skycd SKYCARPETA && echo "Estas en SKYCARPETA"
      ;;
    *)
      echo "Opciones:"
      echo "1 = Repositorios"
      echo "2 = SKYCARPETA"
      ;;
  esac
}


save() {
  echo "Sincronizando lol"
  git pull --rebase > /dev/null &&
  echo "Listo, ahora guardando"
  git add . > /dev/null &&
  echo "Generando un commit todo zzz"
  git commit -m "Auto update" > /dev/null || echo "Ey ey, estoy haciendo aogo aqui; No es cierto, no estas haciendo nada!"
  echo "Subiendo la wea"
  git push > /dev/null  &&
  echo "Listo xD"
}
saveAndExit() {
  echo "Guardando y saliendo, ten cuidado!"
  save
  echo "Bye lol"
  exit
}
