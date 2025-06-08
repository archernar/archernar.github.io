function printAlert() {
    if [[ "$#" -gt 0 ]]; then
         printAtLevel "$msg" $LL2 "ALRT" magenta
    else
        while IFS= read -r msg; do
            printAtLevel "$msg" $LL2 "ALRT" magenta
        done
    fi
}
