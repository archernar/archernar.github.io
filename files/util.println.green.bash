function util.println.green() {
        printf "\033[1;32m%s\033[0m\n" "$msg" | util.silencer
}
