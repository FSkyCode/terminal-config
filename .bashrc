

BASHRCreload() {
  source ~/.bashrc
}

blue() {
  echo "SISTEMA PARA PC"
  case "$1" in
    SKYCARPETA)
      echo "Iniciando..."
      cd SKYCARPETA
      BASHRCsave
      ;;
    stop)
      echo "Deteniendo..."
      ;;
    save)
      echo "Guardando..."
      ;;
    *)
      echo "Opcion no valida"
      ;;
  esac
  save
}

sky() {
  cd /storage/emulated/0/SKYCARPETA || return
  save
  echo ""
  echo "Revisando la biblioteca..."
  ls
  echo "Listo :D"
}



back() {
  echo "Saliendo..."
  cd ..
  echo "Ya saliste, pero ve a salir pasto pinshe loco :V"
}

at() {
  echo "Atajo fuaaa"
  cd -
  echo "Atajo finalizado... y si, hablando de momos, se acabaron los momos"
}

BASHRCsave() {
  echo "BASCHRC"
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

