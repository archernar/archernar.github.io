function TCOLS() {
  local cols=$(odd_or_less $(tput cols)) # Use 'local' to keep variables within the function's scope.
  (( cols = cols + offset ))
  echo "$cols"
}
