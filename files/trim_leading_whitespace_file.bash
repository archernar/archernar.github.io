function trim_leading_whitespace_file() {
  local sz=""

  if [[ -z "$filename" ]]; then
    fecho "Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    fecho "Error: File '$filename' not found."
    return 1
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    remove_leading_whitespace "$line" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
