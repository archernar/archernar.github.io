function paramsf() {
  if [ $# -eq 0 ]; then
    core.print.fatal "Error: Filename not provided." 2
    exit 1
  fi
  if [[ -z "$filename" ]]; then
    core.print.fatal "Error: Filename not provided." 2
    exit 1
  fi
  if [[ ! -f "$filename" ]]; then
    core.print.fatal "Error: File '$filename' not found." 2
    exit 1
  fi
  return 0
}
