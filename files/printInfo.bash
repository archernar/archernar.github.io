function printInfo() {
    if [[ "$#" -gt 0 ]]; then
        printAtLevel "$msg" $LL4 "INFO" green $flag
    else
        while IFS= read -r line; do
            printAtLevel "$line" $LL4 "INFO" green $flag
        done
    fi
}
