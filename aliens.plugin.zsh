alien_filepath() {
  echo "`pwd`/.aliens"
}

load_aliens() {
  local FILE="$(alien_filepath)"

  if [[ -f "$FILE" ]]; then
    source "$FILE"
  fi
}

aliens() {
  case $1 in
    "")
      echo "All your alias are belong to us";;
    "help")
      echo "aliens - directory-specific aliases : all your alias are belong to us" &&
        echo "" &&
        echo " - help : display help info" &&
        echo " - list : list aliens in this directory" &&
        echo " - load : load aliens in this directory" &&
        echo " - add [alias] [command] : add an alien to this directory" &&
        echo " - clear : chase the aliens out of this directory";;
    "list")
      cat "$(alien_filepath)";;
    "load")
      load_aliens &&
        echo "All your alias are belong to us";;
    "add")
      echo "alias $2='$3'" >> "$(alien_filepath)" &&
        load_aliens;;
    "clear")
      truncate -s 0 "$(alien_filepath)";;
    *)
      echo "Invalid command";;
  esac
}

autoload -U add-zsh-hook aliens
add-zsh-hook chpwd load_aliens
