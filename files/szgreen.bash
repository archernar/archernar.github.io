function szgreen() {
    echo "$(printf "\033[1;%sm%s\033[0m\n" "32" "$msg")"
}
