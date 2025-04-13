  local tmp=$(mktemp)
  local LEN=""
  local STRING=""

  # Check if the input file exists
  if [[ ! -f "$input_file" ]]; then
    fecho "Error: Input file '$input_file' not found."
    return 1
  fi

  LEN=`longest_string_length < "$input_file"`
  STRING=`repeat_char "-" "40"`

  rm -f "$tmp" >/dev/null 2>&1
  if [[ "$str" == "MAKELINKS" ]]; then
      cat "$input_file" |gawk '{n=split($0,A,"/");print "[" A[n] "](" $0 ")";}' > $tmp
  else
      cat "$input_file" > $tmp
  fi

  # Read lines from the file and create table rows
  local line_count=0
  local row=""
  local first_row=1

  while IFS= read -r line; do
    if [[ $line_count -eq 0 ]]; then
      if [[ $first_row -eq 1 ]]; then
          echo "| $STRING | $STRING |"
          echo "|----------|----------|"
          first_row=0
      fi
    fi

    row+="| $line "

    line_count=$((line_count + 1))

    if [[ $line_count -eq 2 ]]; then
      echo "$row|"
      row=""
      line_count=0
    fi
  done < "$tmp"

  # Handle remaining lines if the total line count is not a multiple of 5
  if [[ $line_count -gt 0 ]]; then
    for ((i = line_count; i < 2; i++)); do
        row+="|  "
    done
    echo "$row|"
  fi
}
