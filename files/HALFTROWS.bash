function HALFTROWS() {
  local rows=$(odd_or_less $(tput lines)) # Use 'local' to keep variables within the function's scope.
  (( rows = rows / 2 ))
  echo "$rows"
}
