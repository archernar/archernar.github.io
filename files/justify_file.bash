function justify_file() {

  if [[ -z "$filename" ]]; then
    echo "Truncate Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    echo "Truncate Error: File '$filename' not found."
    return 1
  fi

  if [[ -z "$num" ]]; then
    echo "Truncate Error: Number of characters not provided."
    return 1
  fi

  if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Truncate Error: Number of characters must be a positive integer."
    return 1
  fi
  if [[ "$num" == "0" ]]; then
    return 0
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    justify_line "$line" "$num" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
function justify_file() {

  if [[ -z "$filename" ]]; then
    echo "Truncate Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    echo "Truncate Error: File '$filename' not found."
    return 1
  fi

  if [[ -z "$num" ]]; then
    echo "Truncate Error: Number of characters not provided."
    return 1
  fi

  if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Truncate Error: Number of characters must be a positive integer."
    return 1
  fi
  if [[ "$num" == "0" ]]; then
    return 0
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    justify_line "$line" "$num" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
function justify_file() {

  if [[ -z "$filename" ]]; then
    echo "Truncate Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    echo "Truncate Error: File '$filename' not found."
    return 1
  fi

  if [[ -z "$num" ]]; then
    echo "Truncate Error: Number of characters not provided."
    return 1
  fi

  if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Truncate Error: Number of characters must be a positive integer."
    return 1
  fi
  if [[ "$num" == "0" ]]; then
    return 0
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    justify_line "$line" "$num" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
function justify_file() {

  if [[ -z "$filename" ]]; then
    echo "Truncate Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    echo "Truncate Error: File '$filename' not found."
    return 1
  fi

  if [[ -z "$num" ]]; then
    echo "Truncate Error: Number of characters not provided."
    return 1
  fi

  if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Truncate Error: Number of characters must be a positive integer."
    return 1
  fi
  if [[ "$num" == "0" ]]; then
    return 0
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    justify_line "$line" "$num" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
function justify_file() {

  if [[ -z "$filename" ]]; then
    echo "Truncate Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    echo "Truncate Error: File '$filename' not found."
    return 1
  fi

  if [[ -z "$num" ]]; then
    echo "Truncate Error: Number of characters not provided."
    return 1
  fi

  if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Truncate Error: Number of characters must be a positive integer."
    return 1
  fi
  if [[ "$num" == "0" ]]; then
    return 0
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    justify_line "$line" "$num" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
function justify_file() {

  if [[ -z "$filename" ]]; then
    echo "Truncate Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    echo "Truncate Error: File '$filename' not found."
    return 1
  fi

  if [[ -z "$num" ]]; then
    echo "Truncate Error: Number of characters not provided."
    return 1
  fi

  if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Truncate Error: Number of characters must be a positive integer."
    return 1
  fi
  if [[ "$num" == "0" ]]; then
    return 0
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    justify_line "$line" "$num" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
function justify_file() {

  if [[ -z "$filename" ]]; then
    echo "Truncate Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    echo "Truncate Error: File '$filename' not found."
    return 1
  fi

  if [[ -z "$num" ]]; then
    echo "Truncate Error: Number of characters not provided."
    return 1
  fi

  if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Truncate Error: Number of characters must be a positive integer."
    return 1
  fi
  if [[ "$num" == "0" ]]; then
    return 0
  fi

  local temp_file=$(mktemp)

  while IFS= read -r line; do
    justify_line "$line" "$num" >> "$temp_file"
  done < "$filename"

  mv "$temp_file" "$filename"

  return 0
}
