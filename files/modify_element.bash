function modify_element() {
  local new_value="$2"
  if [[ -z "$old_value" || -z "$new_value" ]]; then
    echo "Usage: modify_element <old_value> <new_value>"
    return 1
  fi

  local found=0
  for i in "${!my_array[@]}"; do
    if [[ "${my_array[i]}" == "$old_value" ]]; then
      my_array[i]="$new_value"
      found=1
      echo "Modified '$old_value' to '$new_value'."
      break
    fi
  done

  if [[ "$found" -eq 0 ]]; then
    echo "Element '$old_value' not found."
  fi
  display_array
}
