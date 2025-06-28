function list_slice(arr, start_index, end_index,  i, len, new_arr, new_index) {
  if (start_index < 1) {
    start_index = 1;
  }
  if (end_index > len) {
    end_index = len;
  }
  if (start_index > end_index) {
    return 0; # Empty slice, return 0.
  }

  delete new_arr;
  new_index = 1;
  for (i = start_index; i <= end_index; i++) {
    new_arr[new_index++] = arr[i];
  }
  return new_index - 1;
}
