function util.putln() {
    printf "\033[1;%sm%s\033[0m\n" "$color" "$msg"
}
