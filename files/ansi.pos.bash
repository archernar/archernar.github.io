function ansi.pos() {
#   row,col: 1-based.
    printf "\033[${row};${column}H"
}
