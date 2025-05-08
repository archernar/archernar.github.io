function util.set_background() {
    case "$color" in
        black) 
          printf "$BGWW";
          printf "\033[40m"; 
          printf "$BGBB" ;;
        red) printf "\033[41m" ;;
        green) printf "\033[42m" ;;
        yellow) printf "\033[43m" ;;
        blue) printf "\033[44m" ;;
        magenta) printf "\033[45m" ;;
        cyan) printf "\033[46m" ;;
        white) printf "\033[47m" ;;
        default) printf "\033[49m" ;; # Use 49 for default
        *) echo "Invalid color: $color" >&2; return 1 ;;
    esac
}
