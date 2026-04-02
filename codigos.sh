# Alias u otros datos
alias sd='skycd'
IMPORTANTE="systemCopyCommands.sh"

# Comandos personalisados 

help() {
  echo -e "\e[36m=========== SKY HELP ===========\e[0m"
  echo -e "\e[34mcolors:\e[96m Ver el numero de color para echos =D"
  echo -e "\e[33mcargaIm:\e[0m Carga archivos con codigos del sistema y subsistema."
  echo -e "\e[33mskycd:\e[0m Una mejora a 'cd'."
  echo -e "\e[33mback:\e[0m Salir de una carpeta."
  echo -e "\e[33mat:\e[0m Devolverte a la ultima carpeta."
  echo -e "\e[33mskymainAllSaves:\e[0m Un save a todas las carpetas."
  echo -e "\e[33mskymain:\e[0m Atajos para carpetas importantes en SkyMain."
  echo -e "\e[33mbluemain:\e[0m ..."
  echo -e "\e[33mskylun:\e[0m ..."
  echo -e "\e[33msave:\e[0m Guardar con git."
  echo -e "\e[33msaveAndExit:\e[0m Guardar y salir."
  echo -e "\e[36mLOL=============================\e[0m"
}

colors() {
  echo "===== COLORES NORMALES ====="
  for i in {30..37}; do
    echo -e "\e[${i}mColor codigo ${i}m\e[0m"
    done

  echo ""
  echo "===== COLORES BRILLANTES ====="
  for i in {90..97}; do
    echo -e "\e[${i}mColor codigo ${i}m\e[0m"
    done

  echo ""
  echo "===== FONDOS ====="
  for i in {40..47}; do
    echo -e "\e[${i}mFondo codigo ${i}m\e[0m"
    done

  echo ""
  echo "===== FONDOS BRILLANTES ====="
  for i in {100..107}; do
    echo -e "\e[${i}mFondo codigo ${i}m\e[0m"
    done

  echo ""
  echo "===== ESTILOS ====="
  echo -e "\e[1m1 Negrita\e[0m"
  echo -e "\e[2m2 Opaco\e[0m"
  echo -e "\e[3m3 Italico\e[0m"
  echo -e "\e[4m4 Subrayado\e[0m"
  echo -e "\e[5m5 Parpadeo\e[0m"
  echo -e "\e[7m7 Invertido\e[0m"
}

# Carga importante
cargaIm() {
  echo "Cargando $IMPORTANTE"
  source "$IMPORTANTE"
  SystemCopyCommands
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
  SECRETSAVE
  SECRETSAVE
}

SECRETSAVE() {
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
