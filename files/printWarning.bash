function printWarning() {
    if [[ "$#" -gt 0 ]]; then
         printAtLevel "$msg" $LL3 "WARN" blue
    else
        while IFS= read -r msg; do
            printAtLevel "$msg" $LL3 "WARN" blue
        done
    fi
}
