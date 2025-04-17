function core.string.padright() {
  local len="$2"
  local pad_char="${3:- }" # Default padding character is space
  local current_length=$(string_length "$str")
  local padding_length=$((len - current_length))
  local padding=""

  if [[ "$padding_length" -gt 0 ]]; then
    for ((i=0; i<padding_length; i++)); do
      padding+="$pad_char"
    done
    echo "$str$padding"
  else
    echo "$str" # No padding needed
  fi
}
