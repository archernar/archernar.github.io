function core.position.cursor() {
  printf "\e[$row;${col}H"
}
