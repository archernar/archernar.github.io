function list_remove_value(arr, val,  i, len) {
  for (i = 1; i <= len; i++) {
    if (arr[i] == val) {
      list_remove_at(arr, i);
      return len - 1;
    }
  }
  return len; # Value not found, return original length.
}
