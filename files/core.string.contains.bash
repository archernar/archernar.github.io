function core.string.contains() {
  if [[ "$str" == *"$sub"* ]]; then
    echo 0 # True (contains)
  else
    echo 1 # False (does not contain)
  fi
}
