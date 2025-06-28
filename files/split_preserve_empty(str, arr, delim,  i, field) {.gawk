function split_preserve_empty(str, arr, delim,  i, field) {
  i = 1;
  while (match(str, "([^" delim "]*)" delim "?", field)) {
    arr[i++] = field[1];
    str = substr(str, RLENGTH + 1);
  }
  if (length(str) > 0) {
    arr[i] = str;
  }
  return i;
}
