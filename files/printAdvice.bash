function printAdvice() {
    if [[ "$#" -gt 0 ]]; then
         printAtLevel "$msg" $LL3 "ADVC" blue
    else
        while IFS= read -r msg; do
            printAtLevel "$msg" $LL3 "ADVC" blue
        done
    fi
}
