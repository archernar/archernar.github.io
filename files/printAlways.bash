function printAlways() {
    if [[ "$#" -gt 0 ]]; then
        printAtLevel "$msg" $LL0 "    " yellow
    else
        while IFS= read -r msg; do
            printAtLevel "$msg" $LL0 "    " yellow
        done
    fi
}
