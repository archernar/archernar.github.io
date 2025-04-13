  local output="${input#"${input%%[![:space:]]*}"}"
  echo "$output"
}
