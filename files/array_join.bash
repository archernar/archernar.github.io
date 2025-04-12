function array_join() {
  shift
  local array=("${@}")
  local IFS="$delimiter"
  echo "${array[*]}"
}
