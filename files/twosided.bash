function twosided() {
  local max=2
  random_integer $min $max; DIE1=$?
  random_integer $min $max; DIE2=$?
}
