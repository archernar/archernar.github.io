function add_element() {
  ((w=w-DBPRINTCOL-5))
  local element_to_add="$(echo "$1" | gawk -v w="$w" '{print substr($0,1,w)}')"
  # local element_to_add="$1"

  if [[ -z "$element_to_add" ]]; then
    echo "Usage: add_element <element>"
    return 1
  fi

  my_array+=("$element_to_add")
  if [[ ${#my_array[@]} -gt  $(TROWS -2) ]]; then
    my_array=("${my_array[@]:1}")
  fi
  #echo "Added '$element_to_add'."
  #display_array
}
