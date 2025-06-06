function TCOLS() {
  local c=$(vCOLS)
  local cols=$(odd_or_less $c) # Use 'local' to keep variables within the function's scope.
  #local cols=$(odd_or_less $(tput cols)) # Use 'local' to keep variables within the function's scope.
  (( cols = cols + offset ))
  echo "$cols"
}
