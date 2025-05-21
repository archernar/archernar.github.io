function die() {
  local max=6
  random_integer $min $max; DIE1=$?
  random_integer $min $max; DIE2=$?
}
