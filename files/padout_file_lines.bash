function padout_file_lines() {
  local tmp1=$(mktemp)
  local tmp2=$(mktemp)
  rm -f "$tmp1" >/dev/null 2>&1
  rm -f "$tmp2" >/dev/null 2>&1

  if [[ -z "$filename" ]]; then
    fecho "Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    fecho "Error: File '$filename' not found."
    return 1
  fi

  sed 's/[[:space:]]*$//' "$filename"  > "$tmp1"
  max_len=$(wc -L "$tmp1" | awk '{print $1}')
  padding_length=$((max_len + 0))

  # Iterate through each line of the file and pad it
  rm -f "$tmp2" >/dev/null 2>&1
  while IFS= read -r line; do
    printf "%-${padding_length}s\n" "$line" >> "$tmp2" # Pad to the right
  done < "$tmp1"

  mv "$tmp2" "$filename"

  rm -f "$tmp1" >/dev/null 2>&1
  rm -f "$tmp2" >/dev/null 2>&1
  return 0
}
function padout_file_lines() {
  local tmp1=$(mktemp)
  local tmp2=$(mktemp)
  rm -f "$tmp1" >/dev/null 2>&1
  rm -f "$tmp2" >/dev/null 2>&1

  if [[ -z "$filename" ]]; then
    fecho "Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    fecho "Error: File '$filename' not found."
    return 1
  fi

  sed 's/[[:space:]]*$//' "$filename"  > "$tmp1"
  max_len=$(wc -L "$tmp1" | awk '{print $1}')
  padding_length=$((max_len + 0))

  # Iterate through each line of the file and pad it
  rm -f "$tmp2" >/dev/null 2>&1
  while IFS= read -r line; do
    printf "%-${padding_length}s\n" "$line" >> "$tmp2" # Pad to the right
  done < "$tmp1"

  mv "$tmp2" "$filename"

  rm -f "$tmp1" >/dev/null 2>&1
  rm -f "$tmp2" >/dev/null 2>&1
  return 0
}
function padout_file_lines() {
  local tmp1=$(mktemp)
  local tmp2=$(mktemp)
  rm -f "$tmp1" >/dev/null 2>&1
  rm -f "$tmp2" >/dev/null 2>&1

  if [[ -z "$filename" ]]; then
    fecho "Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    fecho "Error: File '$filename' not found."
    return 1
  fi

  sed 's/[[:space:]]*$//' "$filename"  > "$tmp1"
  max_len=$(wc -L "$tmp1" | awk '{print $1}')
  padding_length=$((max_len + 0))

  # Iterate through each line of the file and pad it
  rm -f "$tmp2" >/dev/null 2>&1
  while IFS= read -r line; do
    printf "%-${padding_length}s\n" "$line" >> "$tmp2" # Pad to the right
  done < "$tmp1"

  mv "$tmp2" "$filename"

  rm -f "$tmp1" >/dev/null 2>&1
  rm -f "$tmp2" >/dev/null 2>&1
  return 0
}
