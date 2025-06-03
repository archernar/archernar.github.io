function TROWS() {
  local r=$(vROWS)
  local rows=$(odd_or_less $r) # Use 'local' to keep variables within the function's scope.
  #local rows=$(odd_or_less $(tput lines)) # Use 'local' to keep variables within the function's scope.
  (( rows= rows + offset ))
  echo "$rows"
}
