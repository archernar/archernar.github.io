function remove_leading_whitespace() {
  local output="${input#"${input%%[![:space:]]*}"}"
  echo "$output"
}
