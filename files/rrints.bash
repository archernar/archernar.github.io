function rrints() {
  local range=$((max - min + 1))
  RR1=$((RANDOM % range + min))
  RR2=$((RANDOM % range + min))
}
