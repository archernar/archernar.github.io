function delete_element_by_index() {
  if [[ -z "$index_to_delete" ]]; then
    echo "Usage: delete_element_by_index <index>"
    return 1
  fi

  if [[ "$index_to_delete" =~ ^[0-9]+$ ]] && (( index_to_delete >= 0 && index_to_delete < ${#my_array[@]} )); then
    unset 'my_array[index_to_delete]'
    my_array=("${my_array[@]}") # Re-index the array
    echo "Deleted element at index $index_to_delete."
  else
    echo "Invalid index: $index_to_delete."
  fi
  display_array
}
