function szblack() {
    echo "$(printf "\033[1;%sm%s\033[0m\n" "30" "$msg")"
}
