function printCritical() {
    if [[ "$#" -gt 0 ]]; then
        printAtLevel "$msg" $LL0 "CRIT" red
    else
        while IFS= read -r msg; do
            printAtLevel "$msg" $LL0 "CRIT" red
        done
    fi
}
