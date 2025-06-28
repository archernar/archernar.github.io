function update_last_element() {
  local len=${#my_array[@]}
  ((len=len-1))
  my_array[$len]="$sz"
}
