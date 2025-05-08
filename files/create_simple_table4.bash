function create_simple_table4() {
  local tmp=$(mktemp)
  local LEN=""
  local STRING=""

  # Check if the input file exists
  if [[ ! -f "$input_file" ]]; then
    fecho "Error: Input file '$input_file' not found."
    return 1
  fi

  LEN=`longest_string_length < "$input_file"`
  STRING=`repeat_char "-" "24"`
  cat "$input_file" |gawk '{n=split($0,A,"/");sub(/[.]html$/, "", A[n]);print A[n];}' | gawk '
      { 
          if (NR % 4 == 1) { 
              printf "%-30s", $0 
              }
          else 
              if (NR % 4 == 2) {
                   printf "%-30s", $0 
              }
              else
                   if (NR % 4 == 3) {i
                        printf "%-30s", $0
                   }
                   else {
                        printf "%-30s\n", $0
                   }
     }' > "$tmp"

  cat "$tmp" > "$input_file"
  
}
