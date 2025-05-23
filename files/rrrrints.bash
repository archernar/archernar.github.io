function rrrrints() {
  local max=$2
  local range=$((max - min + 1))
  RRRR1=$((RANDOM % range + min))
  RRRR2=$((RANDOM % range + min))
}
