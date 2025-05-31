function szgreen() {
    echo "$(printf "\033[1;%sm%s\033[0m" "32" "$msg")"
}
