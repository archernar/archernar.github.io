function EIGTHTCOLS() {
  local cols=$(odd_or_less $(tput cols)) # Use 'local' to keep variables within the function's scope.
  (( cols = cols / 8 ))
  echo "$cols"
}
