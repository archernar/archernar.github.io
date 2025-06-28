function list_remove_at(arr, index,  i, len) {
  if (index < 1 || index > len) {
    return len; # Invalid index, return original length.
  }

  for (i = index; i < len; i++) {
    arr[i] = arr[i + 1];
  }
  delete arr[len];
  return len - 1;
}
