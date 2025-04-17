function core.string.contains() {
  local sub="$2"
  if [[ "$str" == *"$sub"* ]]; then
    echo 0 # True (contains)
  else
    echo 1 # False (does not contain)
  fi
}
