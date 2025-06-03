function vROWS() {
    if [ $# -eq 0 ]; then
        r=$(tput lines)
    else
        if [$1 -gt 0 ]; then
            r=$1
        else
            r=$(tput lines)
        fi
    fi
    echo $r
}
