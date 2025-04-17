function core.string.isempty() {
  if [ -z "$str" ]; then
    echo 0 # True (empty)
  else
    echo 1 # False (not empty)
  fi
}
