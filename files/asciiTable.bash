function asciiTable() {
  echo "DEC HEX CHAR"
  echo "----------------------------------------"

  for i in $(seq 32 200); do
    printf "%3d %3x %s\n" "$i" "$i" "$(printf '\\x%x' "$i")"
  done

  echo "----------------------------------------"
}
