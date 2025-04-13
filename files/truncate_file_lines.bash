function truncate_file_lines() {

  if [[ -z "$filename" ]]; then
    echo "Truncate Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    echo "Truncate Error: File '$filename' not found."
    return 1
  fi

  if [[ -z "$num_chars" ]]; then
    echo "Truncate Error: Number of characters not provided."
    return 1
  fi

  if ! [[ "$num_chars" =~ ^[0-9]+$ ]]; then
    echo "Truncate Error: Number of characters must be a positive integer."
    return 1
  fi
  if [[ "$num_chars" == "0" ]]; then
    return 0
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    printf "%.${num_chars}s\n" "$line" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
function truncate_file_lines() {

  if [[ -z "$filename" ]]; then
    echo "Truncate Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    echo "Truncate Error: File '$filename' not found."
    return 1
  fi

  if [[ -z "$num_chars" ]]; then
    echo "Truncate Error: Number of characters not provided."
    return 1
  fi

  if ! [[ "$num_chars" =~ ^[0-9]+$ ]]; then
    echo "Truncate Error: Number of characters must be a positive integer."
    return 1
  fi
  if [[ "$num_chars" == "0" ]]; then
    return 0
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    printf "%.${num_chars}s\n" "$line" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
function truncate_file_lines() {

  if [[ -z "$filename" ]]; then
    echo "Truncate Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    echo "Truncate Error: File '$filename' not found."
    return 1
  fi

  if [[ -z "$num_chars" ]]; then
    echo "Truncate Error: Number of characters not provided."
    return 1
  fi

  if ! [[ "$num_chars" =~ ^[0-9]+$ ]]; then
    echo "Truncate Error: Number of characters must be a positive integer."
    return 1
  fi
  if [[ "$num_chars" == "0" ]]; then
    return 0
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    printf "%.${num_chars}s\n" "$line" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
function truncate_file_lines() {

  if [[ -z "$filename" ]]; then
    echo "Truncate Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    echo "Truncate Error: File '$filename' not found."
    return 1
  fi

  if [[ -z "$num_chars" ]]; then
    echo "Truncate Error: Number of characters not provided."
    return 1
  fi

  if ! [[ "$num_chars" =~ ^[0-9]+$ ]]; then
    echo "Truncate Error: Number of characters must be a positive integer."
    return 1
  fi
  if [[ "$num_chars" == "0" ]]; then
    return 0
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    printf "%.${num_chars}s\n" "$line" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
