function core.string.substring() {
  local start="$2"
  local len="$3"

  # Adjust start index for bash's 0-based indexing
  local adjusted_start=$((start - 1))

  # Handle potential negative or zero length
  if [[ "$len" -le 0 ]]; then
    echo ""
    return 0
  fi

  # Check if the starting index is within bounds
  if [[ "$adjusted_start" -lt 0 || "$adjusted_start" -ge "${#str}" ]]; then
    echo ""
    return 1 # Indicate error: invalid starting index
  fi

  echo "${str:$adjusted_start:$len}"
}
