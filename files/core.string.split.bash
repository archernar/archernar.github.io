function core.string.split() {
  local delim="$2"
  local -n array_name="$3" # Name of the array to store the result

  IFS="$delim" read -ra array_name <<< "$str"
}
