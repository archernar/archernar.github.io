function szcolor() {
        case "$color" in
            black)   echo "$(szblack   "$sz")"  ;;
            red)     echo "$(szred     "$sz")"  ;;
            green)   echo "$(szgreen   "$sz")"  ;;
            yellow)  echo "$(szyellow  "$sz")"  ;;
            blue)    echo "$(szblue    "$sz")"  ;;
            magenta) echo "$(szmagenta "$sz")"  ;;
            cyan)    echo "$(szcyan    "$sz")"  ;;
            white)   echo "$(szwhite   "$sz")"  ;;
            default) echo "$(szwhite   "$sz")"  ;;
        esac
}
