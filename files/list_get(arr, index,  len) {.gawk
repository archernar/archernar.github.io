function list_get(arr, index,  len) {
  if (index < 1 || index > len) {
    return ""; # Invalid index, return empty string.
  }
  return arr[index];
}
