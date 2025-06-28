function list_index_of(arr, val,  i, len) {
  for (i = 1; i <= len; i++) {
    if (arr[i] == val) {
      return i;
    }
  }
  return -1; # Value not found, return -1.
}
