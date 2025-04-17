function core.string.replacefirst() {
  local old="$2"
  local new="$3"

  if [[ -z "$old" ]]; then
    echo "$str"
    return 0
  fi

  echo "${str/$old/$new}"
}
