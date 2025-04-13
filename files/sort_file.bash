function sort_file() {

  if [[ -z "$filename" ]]; then
    fecho "Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    fecho "Error: File '$filename' not found."
    return 1
  fi
  if [[ -z "$str" ]]; then
    fecho "Error: Control word not provided."
    return 1
  fi

  if [[ "$str" == "" ]]; then
      NOTHING=0
  else
      local tmp1=$(mktemp)
      cat "$filename" | sort > "$tmp1"
      mv "$tmp1" "$filename"
  fi

  return 0
}
function sort_file() {

  if [[ -z "$filename" ]]; then
    fecho "Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    fecho "Error: File '$filename' not found."
    return 1
  fi
  if [[ -z "$str" ]]; then
    fecho "Error: Control word not provided."
    return 1
  fi

  if [[ "$str" == "" ]]; then
      NOTHING=0
  else
      local tmp1=$(mktemp)
      cat "$filename" | sort > "$tmp1"
      mv "$tmp1" "$filename"
  fi

  return 0
}
function sort_file() {

  if [[ -z "$filename" ]]; then
    fecho "Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    fecho "Error: File '$filename' not found."
    return 1
  fi
  if [[ -z "$str" ]]; then
    fecho "Error: Control word not provided."
    return 1
  fi

  if [[ "$str" == "" ]]; then
      NOTHING=0
  else
      local tmp1=$(mktemp)
      cat "$filename" | sort > "$tmp1"
      mv "$tmp1" "$filename"
  fi

  return 0
}
function sort_file() {

  if [[ -z "$filename" ]]; then
    fecho "Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    fecho "Error: File '$filename' not found."
    return 1
  fi
  if [[ -z "$str" ]]; then
    fecho "Error: Control word not provided."
    return 1
  fi

  if [[ "$str" == "" ]]; then
      NOTHING=0
  else
      local tmp1=$(mktemp)
      cat "$filename" | sort > "$tmp1"
      mv "$tmp1" "$filename"
  fi

  return 0
}
function sort_file() {

  if [[ -z "$filename" ]]; then
    fecho "Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    fecho "Error: File '$filename' not found."
    return 1
  fi
  if [[ -z "$str" ]]; then
    fecho "Error: Control word not provided."
    return 1
  fi

  if [[ "$str" == "" ]]; then
      NOTHING=0
  else
      local tmp1=$(mktemp)
      cat "$filename" | sort > "$tmp1"
      mv "$tmp1" "$filename"
  fi

  return 0
}
function sort_file() {

  if [[ -z "$filename" ]]; then
    fecho "Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    fecho "Error: File '$filename' not found."
    return 1
  fi
  if [[ -z "$str" ]]; then
    fecho "Error: Control word not provided."
    return 1
  fi

  if [[ "$str" == "" ]]; then
      NOTHING=0
  else
      local tmp1=$(mktemp)
      cat "$filename" | sort > "$tmp1"
      mv "$tmp1" "$filename"
  fi

  return 0
}
