function add_element() {

  if [[ -z "$element_to_add" ]]; then
    echo "Usage: add_element <element>"
    element_to_add="NADA"
    #return 1
  fi

  my_array+=("$element_to_add")
  if [[ ${#my_array[@]} -gt  $(TROWS -2) ]]; then
    my_array=("${my_array[@]:1}")
  fi
  #echo "Added '$element_to_add'."
  #display_array
}
