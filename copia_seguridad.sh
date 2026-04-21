# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
# SKYSYSTEM START
# Alias u otros datos
alias sd='skycd'
skymainBASICO="/mnt/c/Users/juanf/"

# Prototipo de comandos
Prototipo="systemCopyCommands.sh"

# Opciones de navegacion
skymainOPTIONS=(
  "SKYSYSTEM"
  "SKYCARPETA"
  "> LUCKY-BLOCK-GAME"
  "REPOSITORIOS"
  "> terminal-config"
  "> Proyecto-G-nesis-ASISTENTE-"
)
bluemainOPTIONS=(
  "SKYSYSTEM"
  "SKYCARPETA"
  "> LUCKY-BLOCK-GAME"
)


# Comandos personalisados
# Help
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

# Comandos personalizados
skycd() {
  if [ -z "$1" ]; then
    echo -e "\e[31mDigita una ubicacion lol\e[0m"
    return 1
  fi

  if ! cd "$1"; then
    echo -e "\e[31mNo se pudo entrar a la carpeta\e[0m"
    return 1
  fi

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
  echo "Y volo... Nombrando su barco Libertad"
}

# --  Dispositivos  --
# Comandos helpers

# Guardado Globalizado
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

maincd() {
  cd ~
  skycd "$1"
  echo "Estas en $2"
  if [[ "$3" == "S" ]]; then
    sleep 1
    echo "Guardando durante navegacion"
    save
  else
    echo "Sin guardar despues de navegacion"
    mostrar_opciones
  fi
}

mostrar_opciones() {
  local i=1
  for item in "${skymainOPTIONS[@]}"; do
    echo "[$i] = $item"
    ((i++))
  done
}

# Para SkyMain - Laptod OP
skymain() {
  case "$1" in
    1)
      maincd "$skymainBASICO"SKYSYSTEM "SKYSYSTEM" "$2"
      ;;
    2)
      maincd "$skymainBASICO"PROYECTOS/SKYCARPETA "SKYCARPETA" "$2"
      ;;
    3)
      maincd "$skymainBASICO"PROYECTOS/SKYCARPETA "AUN NO DISPONIBLE" "$2"
      ;;
    4)
      maincd "$skymainBASICO"PROYECTOS/REPOSITORIOS "REPOSITORIOS" "$2"
      ;;
    5)
      maincd "$skymainBASICO"PROYECTOS/REPOSITORIOS/terminal-config "TERMINAL-CONFIG" "$2"
      ;;
    6)
      maincd "$skymainBASICO"PROYECTOS/REPOSITORIOS/ "AUN NO DISPONIBLE" "$2"
      ;;
    *)
      i=1
      for item in "${skymainOPTIONS[@]}"; do
        echo "[$i] = $item"
        ((i++))
      done
      ;;
  esac
}

# Para BlueMain - Android no OP
bluemain() {
  case "$1" in
    1)
      cd ~
      skycd /storage/emulated/0/SKYCARPETA && echo "Estas en SKYCARPETA"
      ;;
    2)
      skycd /storage/emulated/0/REPOSITORIOS && echo "Estas en REPOSITORIOS"
      ;;
    3)
      skycd /storage/emulated/0/REPOSITORIOS/terminal-config && echo "Estas en TERMINAL-CONFIG de REPOSITORIOS"
      ;;
    4)
      skycd /storage/emulated/0/REPOSITORIOS/Proyecto-G-nesis-ASISTENTE- && echo "Estas en PROYECTO-G-NESIS-ASISTENTE-"
      ;;
    *)
      echo "Opciones:"
      echo "1 = SKYCARPETA"
      echo "2 = REPOSITORIOS (hacia abajo sus carpetas)"
      echo "3 = Terminal config"
      ;;
  esac
}

# Para SkyLun - Laptod Ubuntu/Lubuntu
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

# Guardar y cargar
save() {
  SECRETSAVE
  SECRETSAVE
}

SECRETSAVE() {
  git add . > /dev/null &&
  git commit -m "Auto update" > /dev/null || echo "Ey ey, estoy haciendo aogo aqui; No es cierto, no estas haciendo nada!"
  git pull --rebase > /dev/null &&
  git push > /dev/null  &&
  echo "Listo xD"
}

saveAndExit() {
  echo "Guardando y saliendo, ten cuidado!"
  save
  echo "Bye lol"
  exit
}
# SKYSYSTEM END
