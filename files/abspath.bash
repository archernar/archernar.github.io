  if [[ -z "$path" ]]; then
    pwd
  else
    realpath "$path"
  fi
}
