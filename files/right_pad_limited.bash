function right_pad_limited() {
  local max_length=$((width - 1))
  local truncated_string="${string:0:$max_length}" # Truncate if longer than max_length
  local current_length="${#truncated_string}"
  local padding_length=$((width - current_length))

  if (( padding_length > 0 )); then
    printf "%-${width}s" "$truncated_string"
  else
    printf "%s" "$truncated_string" # String is already at or wider than the width
  fi
}
