function rrrints() {
  local max=$2
  local range=$((max - min + 1))
  RRR1=$((RANDOM % range + min))
  RRR2=$((RANDOM % range + min))
}
