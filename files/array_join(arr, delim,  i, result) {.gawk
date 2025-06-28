function array_join(arr, delim,  i, result) {
  for (i in arr) {
    result = result (result == "" ? "" : delim) arr[i];
  }
  return result;
}
