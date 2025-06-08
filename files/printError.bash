function printError() {
    if [[ "$#" -gt 0 ]]; then
        printAtLevel "$msg" $LL1 "ERRR" cyan
    else
        while IFS= read -r msg; do
            printAtLevel "$msg" $LL1 "ERRR" cyan
        done
    fi
}
