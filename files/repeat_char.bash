  local result=""

  if [[ -z "$char" || -z "$count" ]]; then
    echo "Usage: repeat_char <character> <count>" >&2
    return 1
  fi

  if [[ "$count" -lt 0 ]]; then
    echo "Count must be a non-negative integer." >&2
    return 1
  fi

  for ((i = 0; i < count; i++)); do
    result+="$char"
  done

  echo "$result"
}
