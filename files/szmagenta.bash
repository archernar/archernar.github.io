function szmagenta() {
    echo "$(printf "\033[1;%sm%s\033[0m" "35" "$msg")"
}
