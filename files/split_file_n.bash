function split_file_n() {
  local prefix="${3:-split_}" # Default prefix is "split_"

  if [[ -z "$input_file" || -z "$num_files" ]]; then
    echo "Usage: split_file_n <input_file> <number_of_files> [prefix]"
    return 1
  fi

  if [[ ! -f "$input_file" ]]; then
    echo "Error: Input file '$input_file' not found."
    return 1
  fi

  if ! [[ "$num_files" =~ ^[0-9]+$ ]]; then
      echo "Error: Number of files must be a positive integer."
      return 1
  fi

  local total_lines=$(wc -l < "$input_file")
  local lines_per_file=$((total_lines / num_files))
  local remainder=$((total_lines % num_files))

  local start_line=1
  for ((i=1; i<=num_files; i++)); do
    local output_file="${prefix}${i}"
    local current_lines=$lines_per_file

    if [[ $i -le $remainder ]]; then
      ((current_lines++)) # Distribute remainder lines
    fi

    head -n "$((start_line + current_lines - 1))" "$input_file" | tail -n "$current_lines" > "$output_file"

    ((start_line += current_lines))
  done
}
function split_file_n() {
  local prefix="${3:-split_}" # Default prefix is "split_"

  if [[ -z "$input_file" || -z "$num_files" ]]; then
    echo "Usage: split_file_n <input_file> <number_of_files> [prefix]"
    return 1
  fi

  if [[ ! -f "$input_file" ]]; then
    echo "Error: Input file '$input_file' not found."
    return 1
  fi

  if ! [[ "$num_files" =~ ^[0-9]+$ ]]; then
      echo "Error: Number of files must be a positive integer."
      return 1
  fi

  local total_lines=$(wc -l < "$input_file")
  local lines_per_file=$((total_lines / num_files))
  local remainder=$((total_lines % num_files))

  local start_line=1
  for ((i=1; i<=num_files; i++)); do
    local output_file="${prefix}${i}"
    local current_lines=$lines_per_file

    if [[ $i -le $remainder ]]; then
      ((current_lines++)) # Distribute remainder lines
    fi

    head -n "$((start_line + current_lines - 1))" "$input_file" | tail -n "$current_lines" > "$output_file"

    ((start_line += current_lines))
  done
}
function split_file_n() {
  local prefix="${3:-split_}" # Default prefix is "split_"

  if [[ -z "$input_file" || -z "$num_files" ]]; then
    echo "Usage: split_file_n <input_file> <number_of_files> [prefix]"
    return 1
  fi

  if [[ ! -f "$input_file" ]]; then
    echo "Error: Input file '$input_file' not found."
    return 1
  fi

  if ! [[ "$num_files" =~ ^[0-9]+$ ]]; then
      echo "Error: Number of files must be a positive integer."
      return 1
  fi

  local total_lines=$(wc -l < "$input_file")
  local lines_per_file=$((total_lines / num_files))
  local remainder=$((total_lines % num_files))

  local start_line=1
  for ((i=1; i<=num_files; i++)); do
    local output_file="${prefix}${i}"
    local current_lines=$lines_per_file

    if [[ $i -le $remainder ]]; then
      ((current_lines++)) # Distribute remainder lines
    fi

    head -n "$((start_line + current_lines - 1))" "$input_file" | tail -n "$current_lines" > "$output_file"

    ((start_line += current_lines))
  done
}
function split_file_n() {
  local prefix="${3:-split_}" # Default prefix is "split_"

  if [[ -z "$input_file" || -z "$num_files" ]]; then
    echo "Usage: split_file_n <input_file> <number_of_files> [prefix]"
    return 1
  fi

  if [[ ! -f "$input_file" ]]; then
    echo "Error: Input file '$input_file' not found."
    return 1
  fi

  if ! [[ "$num_files" =~ ^[0-9]+$ ]]; then
      echo "Error: Number of files must be a positive integer."
      return 1
  fi

  local total_lines=$(wc -l < "$input_file")
  local lines_per_file=$((total_lines / num_files))
  local remainder=$((total_lines % num_files))

  local start_line=1
  for ((i=1; i<=num_files; i++)); do
    local output_file="${prefix}${i}"
    local current_lines=$lines_per_file

    if [[ $i -le $remainder ]]; then
      ((current_lines++)) # Distribute remainder lines
    fi

    head -n "$((start_line + current_lines - 1))" "$input_file" | tail -n "$current_lines" > "$output_file"

    ((start_line += current_lines))
  done
}
function split_file_n() {
  local prefix="${3:-split_}" # Default prefix is "split_"

  if [[ -z "$input_file" || -z "$num_files" ]]; then
    echo "Usage: split_file_n <input_file> <number_of_files> [prefix]"
    return 1
  fi

  if [[ ! -f "$input_file" ]]; then
    echo "Error: Input file '$input_file' not found."
    return 1
  fi

  if ! [[ "$num_files" =~ ^[0-9]+$ ]]; then
      echo "Error: Number of files must be a positive integer."
      return 1
  fi

  local total_lines=$(wc -l < "$input_file")
  local lines_per_file=$((total_lines / num_files))
  local remainder=$((total_lines % num_files))

  local start_line=1
  for ((i=1; i<=num_files; i++)); do
    local output_file="${prefix}${i}"
    local current_lines=$lines_per_file

    if [[ $i -le $remainder ]]; then
      ((current_lines++)) # Distribute remainder lines
    fi

    head -n "$((start_line + current_lines - 1))" "$input_file" | tail -n "$current_lines" > "$output_file"

    ((start_line += current_lines))
  done
}
function split_file_n() {
  local prefix="${3:-split_}" # Default prefix is "split_"

  if [[ -z "$input_file" || -z "$num_files" ]]; then
    echo "Usage: split_file_n <input_file> <number_of_files> [prefix]"
    return 1
  fi

  if [[ ! -f "$input_file" ]]; then
    echo "Error: Input file '$input_file' not found."
    return 1
  fi

  if ! [[ "$num_files" =~ ^[0-9]+$ ]]; then
      echo "Error: Number of files must be a positive integer."
      return 1
  fi

  local total_lines=$(wc -l < "$input_file")
  local lines_per_file=$((total_lines / num_files))
  local remainder=$((total_lines % num_files))

  local start_line=1
  for ((i=1; i<=num_files; i++)); do
    local output_file="${prefix}${i}"
    local current_lines=$lines_per_file

    if [[ $i -le $remainder ]]; then
      ((current_lines++)) # Distribute remainder lines
    fi

    head -n "$((start_line + current_lines - 1))" "$input_file" | tail -n "$current_lines" > "$output_file"

    ((start_line += current_lines))
  done
}
