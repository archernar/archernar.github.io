function util.posprint() {
         if [ "$n" == "" ]; then                                                                                               
             n=1
         fi
    ansi.move "$row" "$col"; 
    for ((i=0; i<$n; i++)); do
        printf "%s" "$msg"
    done
}
