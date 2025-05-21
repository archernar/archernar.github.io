function ansi.gutter() {
    #printf "\033[$(HALFTROWS);$(HALFTCOLS)H"
    printf "\033[$(TROWS -1);1H"
}
