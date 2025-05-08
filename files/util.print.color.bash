function util.print.color() {
    if core._should_print_color 1; then
        case "$color" in
            black)   util.println.white   "$sz" ;;
            red)     util.println.red     "$sz" ;;
            green)   util.println.green   "$sz" ;;
            yellow)  util.println.white   "$sz" ;;
            blue)    util.println.blue    "$sz" ;;
            magenta) util.println.magenta "$sz" ;;
            cyan)    util.println.white   "$sz" ;;
            white)   util.println.white   "$sz" ;;
            default) util.println.white   "$sz" ;;
            *) echo "Invalid color: $color" >&2; return 1 ;;
        esac
    else
        util.println.white "$sz"
    fi
}
