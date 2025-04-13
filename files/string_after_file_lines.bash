function string_after_file_lines() {

  if [[ -z "$filename" ]]; then
    echo "string_before Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    echo "string_before Error: File '$filename' not found."
    return 1
  fi

  if [[ -z "$str" ]]; then
    echo "string_before Error: Number of characters not provided."
    return 1
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    printf "%s${str}\n" "$line" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
function string_after_file_lines() {

  if [[ -z "$filename" ]]; then
    echo "string_before Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    echo "string_before Error: File '$filename' not found."
    return 1
  fi

  if [[ -z "$str" ]]; then
    echo "string_before Error: Number of characters not provided."
    return 1
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    printf "%s${str}\n" "$line" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
function string_after_file_lines() {

  if [[ -z "$filename" ]]; then
    echo "string_before Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    echo "string_before Error: File '$filename' not found."
    return 1
  fi

  if [[ -z "$str" ]]; then
    echo "string_before Error: Number of characters not provided."
    return 1
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    printf "%s${str}\n" "$line" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
function string_after_file_lines() {

  if [[ -z "$filename" ]]; then
    echo "string_before Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    echo "string_before Error: File '$filename' not found."
    return 1
  fi

  if [[ -z "$str" ]]; then
    echo "string_before Error: Number of characters not provided."
    return 1
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    printf "%s${str}\n" "$line" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
function string_after_file_lines() {

  if [[ -z "$filename" ]]; then
    echo "string_before Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    echo "string_before Error: File '$filename' not found."
    return 1
  fi

  if [[ -z "$str" ]]; then
    echo "string_before Error: Number of characters not provided."
    return 1
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    printf "%s${str}\n" "$line" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
function string_after_file_lines() {

  if [[ -z "$filename" ]]; then
    echo "string_before Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    echo "string_before Error: File '$filename' not found."
    return 1
  fi

  if [[ -z "$str" ]]; then
    echo "string_before Error: Number of characters not provided."
    return 1
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    printf "%s${str}\n" "$line" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
function string_after_file_lines() {

  if [[ -z "$filename" ]]; then
    echo "string_before Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    echo "string_before Error: File '$filename' not found."
    return 1
  fi

  if [[ -z "$str" ]]; then
    echo "string_before Error: Number of characters not provided."
    return 1
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    printf "%s${str}\n" "$line" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
function string_after_file_lines() {

  if [[ -z "$filename" ]]; then
    echo "string_before Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    echo "string_before Error: File '$filename' not found."
    return 1
  fi

  if [[ -z "$str" ]]; then
    echo "string_before Error: Number of characters not provided."
    return 1
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    printf "%s${str}\n" "$line" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
