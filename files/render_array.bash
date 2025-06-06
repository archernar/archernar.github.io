function render_array() {
  local len=${#my_array[@]}
  local i=0

  DBPRINTCOL=$INIT_DBPRINTCOL
  DBPRINTROW=$INIT_DBPRINTROW
  #DBPRINTCOL=90
  #DBPRINTROW=3
  for ((i = 0; i < len; i++)); do
      item="${my_array[$i]}"
      #echo "$item" >> /tmp/err
      dbprint "$item"

#       if [[ $DBPRINTROW -gt 5 ]]; then
#           DBPRINTROW=0
#       fi
  done
}
