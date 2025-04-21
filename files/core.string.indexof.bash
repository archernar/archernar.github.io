function core.string.indexof() {
  local index

  if [[ -z "$sub" ]]; then
    echo 0 # Empty substring found at the beginning
    return 0
  fi

  index=$(expr index "$str" "$sub")
  if [[ "$index" -gt 0 ]]; then
    echo $((index - 1)) # Adjust to 0-based indexing
    return 0
  else
    echo -1 # Substring not found
    return 1
  fi
}
