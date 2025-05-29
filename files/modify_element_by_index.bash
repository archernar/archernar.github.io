function modify_element_by_index() {
  local new_value="$2"
  if [[ -z "$index" || -z "$new_value" ]]; then
    echo "Usage: modify_element_by_index <index> <new_value>"
    return 1
  fi

  if [[ "$index" =~ ^[0-9]+$ ]] && (( index >= 0 && index < ${#my_array[@]} )); then
    local old_value="${my_array[index]}"
    my_array[index]="$new_value"
    echo "Modified element at index $index from '$old_value' to '$new_value'."
  else
    echo "Invalid index: $index."
  fi
  display_array
}
