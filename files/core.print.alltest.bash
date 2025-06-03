function core.print.alltest() {
       local void=0    # Bash-Function-Args

       local ct=1;
       local sz="";
       local r=0;
       local m=0;
       local n=0;
       local o=0;
       local p=0;
       local i=0;
       local w=0; local x=0; local y=0; local z=0;
       local q1=0; local q2=0; local q3=0; local q4=0;
initialize_empty_array
D=`date`
stack_init
console.rulers
ansi.gutteractual
       ct=6
       while [ $ct -lt 16 ]; do
           panel $ct $ct 5 5
           ((ct=ct+2))
       done
       ansi.gutteractual
}
