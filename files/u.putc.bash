function u.putc() {
    printf "\033[1;%sm%s\033[0m" "$color" "$msg"
}
