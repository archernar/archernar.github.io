function szwhite() {
    echo "$(printf "\033[1;%sm%s\033[0m\n" "37" "$msg")"
}
