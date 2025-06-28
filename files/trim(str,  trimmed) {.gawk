function trim(str,  trimmed) {
  sub(/[ \t\r\n]+$/, "", str);
  return str;
}
