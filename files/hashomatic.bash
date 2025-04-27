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
  core.print.critical "HashoMatic $filename"
  if [ $(isSameHash "$filename") == "0" ]; then
    grep -v DATEOMATIC "$filename" | grep -v HASHOMATIC > $tmp1
    IHASH=$(md5sum "tmp1" | awk '{print $1}')
    core.print.echo "\" *********************************************************DATEOMATIC: $D"      > $tmp1
    core.print.echo "\" *********************************************************HASHOMATIC: $IHASH" >> $tmp1
    cat $tmp1  > "$filename"
    git add "$filename"
    rm -f "$tmp1" >/dev/null 2>&1
  fi
}
