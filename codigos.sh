# Alias u otros datos
alias sd='skycd'

# Comandos personalisados 
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


# Para SkyMain 
SkyMain() {
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

# Para BlueMain 
BlueMain() {
  case "$1" in
    1)
      cd /storage/emulated/0/REPOSITORIOS && echo "📂 Estás en Downloads"
      ;;
    2)
      cd /Documents && echo "📂 Estás en Documents"
      ;;
    *)
      echo "Opciones:"
      echo "1 = Downloads"
      echo "2 = Documents"
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
