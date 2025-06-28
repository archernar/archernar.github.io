function list_reverse(arr,  i, len, temp_arr) {
  for (i = 1; i <= len; i++) {
    temp_arr[i] = arr[i];
  }
  for (i = 1; i <= len; i++) {
    arr[i] = temp_arr[len - i + 1];
  }
  return len;
}
