function rints() {
  local range=$((max - min + 1))
  R1=$((RANDOM % range + min))
  R2=$((RANDOM % range + min))
}
