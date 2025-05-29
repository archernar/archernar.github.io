function delete_element() {
  if [[ -z "$element_to_delete" ]]; then
    echo "Usage: delete_element <element>"
    return 1
  fi

  local new_array=()
  local found=0
  for item in "${my_array[@]}"; do
    if [[ "$item" != "$element_to_delete" ]]; then
      new_array+=("$item")
    else
      found=1
    fi
  done

  if [[ "$found" -eq 1 ]]; then
    my_array=("${new_array[@]}")
    echo "Deleted '$element_to_delete'."
  else
    echo "Element '$element_to_delete' not found."
  fi
  display_array
}
