function indent_file() {

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
    echo "    $line" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
function indent_file() {

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
    echo "    $line" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
function indent_file() {

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
    echo "    $line" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
function indent_file() {

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
    echo "    $line" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
