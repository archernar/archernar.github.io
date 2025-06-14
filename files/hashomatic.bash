function hashomatic() {
  local tmp1=$(mktemp)
  if [[ -z "$filename" ]]; then
    fecho "Error: Filename not provided."
    return 1
  fi
  if [[ ! -f "$filename" ]]; then
    fecho "Error: File '$filename' not found."
    return 1
  fi
  printCritical "HashoMatic $filename"
  if [ $(isSameHash "$filename") == "0" ]; then
    IHASH=$(md5sum "$tmp1" | awk '{print $1}')
    cat $tmp1  > "$filename"
    git add "$filename"
    rm -f "$tmp1" >/dev/null 2>&1
  fi
}
