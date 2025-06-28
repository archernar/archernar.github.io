function list_concat(arr1, arr2,  i, len1, len2, new_arr, new_index) {
  len2 = length(arr2);
  delete new_arr;
  new_index = 1;
  for (i = 1; i <= len1; i++) {
    new_arr[new_index++] = arr1[i];
  }
  for (i = 1; i <= len2; i++) {
    new_arr[new_index++] = arr2[i];
  }
  return new_index - 1;
}
