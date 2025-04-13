function trim() {
  printf "%s" "${str#"${str%%[![:space:]]*}"}" "${str%"${str##*[![:space:]]}"}"
}
