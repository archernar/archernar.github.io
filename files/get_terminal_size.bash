function get_terminal_size() {
  # Use the 'tput' command to get the number of rows and columns.
  local rows=$(tput lines) # Use 'local' to keep variables within the function's scope.
  local cols=$(tput cols) # Use 'local' to keep variables within the function's scope.
  echo "$rows $cols" # Return the values, space-separated.  Simplifies parsing.
}
