function ansi.get_cursor_position() {
  local IFS=$'\n'
  local answer=$( (stty -echo; stty raw; printf "\033[6n"; sleep 0.1; cat) )
  stty cooked; stty echo
  IFS=$' '
  if [[ $answer =~ ^$'\033\[([0-9]+);([0-9]+)R' ]]; then
    echo "${BASH_REMATCH[1]},${BASH_REMATCH[2]}"
  else
    echo "1,1" >&2 # Default to 1,1 on error, to avoid script break.
  fi
}
