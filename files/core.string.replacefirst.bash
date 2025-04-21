function core.string.replacefirst() {

  if [[ -z "$old" ]]; then
    echo "$str"
    return 0
  fi

  echo "${str/$old/$new}"
}
