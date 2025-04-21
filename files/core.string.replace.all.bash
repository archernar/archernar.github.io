function core.string.replace.all() {

  if [[ -z "$old" ]]; then
    echo "$str"
    return 0
  fi

  echo "${str//$old/$new}"
}
