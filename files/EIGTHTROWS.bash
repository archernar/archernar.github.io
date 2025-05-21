function EIGTHTROWS() {
  local rows=$(odd_or_less $(tput lines)) # Use 'local' to keep variables within the function's scope.
  (( rows = rows / 8 ))
  echo "$rows"
}
