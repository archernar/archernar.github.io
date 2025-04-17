function core.check_for_duplicates() {
  local -A lines  # Declare an associative array to store line counts.
  local line
  local duplicate_found=0

  # Check if the file exists and is readable.
  if [[ ! -r "$filename" ]]; then
    printf "Error: File '%s' does not exist or is not readable.\n" "$filename" >&2
    return 2
  fi

  # Read the file line by line.
  while IFS= read -r line; do
    # If the line exists as a key in the associative array, increment its count.
    if [[ -v lines["$line"] ]]; then
      ((lines["$line"]++))
      # Check if this is the first time we've seen this duplicate.
      if ((lines["$line"] == 2)); then
        duplicate_found=1 # Set the flag when the first duplicate is found
        printf "Duplicate line found:\n" >&2 # print this only once
      fi
    else
      # Otherwise, add the line to the array with a count of 1.
      lines["$line"]=1
    fi
  done < "$filename"

  # Print the duplicate lines and their counts.
  if ((duplicate_found)); then
    for line in "${!lines[@]}"; do # loop through the keys of the array
      if ((lines["$line"] > 1)); then
        printf "  \"%s\": %d times\n" "$line" "${lines["$line"]}" >&2
      fi
    done
    return 1 # Return 1 to indicate duplicates were found.
  else
    return 0 # Return 0 to indicate no duplicates were found.
  fi
}
