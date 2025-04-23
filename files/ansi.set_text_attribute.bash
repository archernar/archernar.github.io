function ansi.set_text_attribute() {
    case "$attribute" in
        normal) printf "\033[0m" ;;
        bold) printf "\033[1m" ;;
        dim) printf "\033[2m" ;;
        underline) printf "\033[4m" ;;
        blink) printf "\033[5m" ;;
        reverse) printf "\033[7m" ;;
        hidden) printf "\033[8m" ;;
        *) echo "Invalid attribute: $attribute" >&2; return 1 ;;
    esac
}
