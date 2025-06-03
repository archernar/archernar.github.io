function vCOLS() {
    c=$(tput cols)
    if [ $# -gt 0 ]; then
        c=$1
    fi
    echo $c
}
