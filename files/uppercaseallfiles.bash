function uppercaseallfiles() {
    for file in *; do mv "$file" "$(echo ${file:0:1} | tr '[:lower:]' '[:upper:]')${file:1}"; done
}
