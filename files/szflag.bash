function szflag() {
    local t=$(mktemp)
    echo "" > $t
    echo "************************************************" >> $t
    echo "** $msg"  >> $t
    echo "************************************************" >> $t
    echo "" >> $t
    cat $t
    rm $t
    sleep 0.33
}
