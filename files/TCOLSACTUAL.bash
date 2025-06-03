function TCOLSACTUAL() {
  local cols=$(odd_or_less $(tput cols)) # Use 'local' to keep variables within the function's scope.
  echo "$cols"
}
