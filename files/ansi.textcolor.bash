function ansi.textcolor() {
#   color: The color name (e.g., red, blue, green).
    case "$color" in
        black) printf "\033[30m" ;;
        red) printf "\033[31m" ;;
        green) printf "\033[32m" ;;
        yellow) printf "\033[33m" ;;
        blue) printf "\033[34m" ;;
        magenta) printf "\033[35m" ;;
        cyan) printf "\033[36m" ;;
        white) printf "\033[37m" ;;
        default) printf "\033[39m" ;; # Use 39 for default
        *) echo "Invalid color: $color" >&2; return 1 ;;
    esac
}
