function dice() {
  local max=12
  random_integer $min $max; DIE1=$?
  random_integer $min $max; DIE2=$?
}
