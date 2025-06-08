function printDebug() {
    if [[ "$#" -gt 0 ]]; then
         printAtLevel "$msg" $LL5 "DBUG" yellow
    else
        while IFS= read -r msg; do
            printAtLevel "$msg" $LL5 "DBUG" yellow
        done
    fi
}
