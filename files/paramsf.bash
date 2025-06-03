function paramsf() {
  if [ $# -eq 0 ]; then
    printFatal "Error: Filename not provided." 2
    exit 1
  fi
  if [[ -z "$filename" ]]; then
    printFatal "Error: Filename not provided." 2
    exit 1
  fi
  if [[ ! -f "$filename" ]]; then
    printFatal "Error: File '$filename' not found." 2
    exit 1
  fi
  return 0
}
