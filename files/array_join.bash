  shift
  local array=("${@}")
  local IFS="$delimiter"
  echo "${array[*]}"
}
