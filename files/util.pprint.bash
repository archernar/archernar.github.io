function util.pprint() {
         local sz="";
         if [ "$n" == "" ]; then                                                                                               
             n=1
         fi
    ansi.move "$row" "$col"; 
    for ((i=0; i<$n; i++)); do
        sz="$sz$msg"
    done
    printf "%s" "$sz"
}
