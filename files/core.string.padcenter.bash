function core.string.padcenter() {
  local pad_char="${3:- }" # Default padding character is space
  local current_length=$(string_length "$str")

  if [[ "$width" -le "$current_length" ]]; then
    echo "$str" # No padding needed
    return 0
  fi

  local left_padding_length=$(( (width - current_length) / 2 ))
  local right_padding_length=$(( width - current_length - left_padding_length ))
  local left_padding=""
  local right_padding=""

  for ((i=0; i<left_padding_length; i++)); do
    left_padding+="$pad_char"
  done
  for ((i=0; i<right_padding_length; i++)); do
    right_padding+="$pad_char"
  done

  echo "$left_padding$str$right_padding"
}
