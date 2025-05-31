function szred() {
    echo "$(printf "\033[1;%sm%s\033[0m" "31" "$msg")"
}
