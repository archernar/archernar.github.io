function core.dumpfile.info() {
  local line

  # Check if the file exists and is readable.
  if [[ ! -r "$filename" ]]; then
    printf "Error: File '%s' does not exist or is not readable.\n" "$filename" >&2
    return 2
  fi

  # Read the file line by line.
  while IFS= read -r line; do
      core.print.info "$line"
  done < "$filename"
}
