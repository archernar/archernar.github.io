function util.posprint.white() {
         if [ "$n" == "" ]; then                                                                                               
             n=1
         fi
    ansi.move "$row" "$col"; 
    for ((i=0; i<$n; i++)); do
        u.put "37" "$msg"
    done
}
