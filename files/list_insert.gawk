function list_insert(arr, index, val,  i, temp_arr, len) {
  if (index < 1 || index > len + 1) {
    return len; # Invalid index, return original length.
  }

  for (i = len; i >= index; i--) {
    temp_arr[i + 1] = arr[i];
  }
  arr[index] = val;
  for (i = index + 1; i <= len + 1; i++) {
    arr[i] = temp_arr[i];
  }
  return len + 1;
}
