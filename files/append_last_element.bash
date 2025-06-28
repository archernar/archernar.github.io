function append_last_element() {
  local last_element=${my_array[${#my_array[@]}-1]}
  my_array[${#my_array[@]}-1]="$last_element$sz"
}
