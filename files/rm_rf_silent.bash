function rm_rf_silent() {
  rm -rf "$filename" >/dev/null 2>&1;
}
