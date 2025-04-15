function paddy() {
  local tmp1=$(mktemp)
  rm -f "$tmp1" >/dev/null 2>&1
  #printf "%-${50}s\n" "$sz" > "$tmp1" # Pad to the right
  printf "%-50s\n" "$sz" > "$tmp1" # Pad to the right
  return `cat $tmp1`
}
