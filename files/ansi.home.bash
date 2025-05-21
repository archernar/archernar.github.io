function ansi.home() {
    #printf "\033[$(HALFTROWS);$(HALFTCOLS)H"
    printf "\033[$(TROWS);1H"
}
