function random_integer() {
  local max=$2

  # Check if the input is valid.
  if ! [[ "$min" =~ ^-?[0-9]+$ ]] || ! [[ "$max" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Both arguments must be integers." >&2
    return 1
  fi

  # Check if min is less than or equal to max.
  if (( min > max )); then
    echo "Error: Minimum value must be less than or equal to maximum value." >&2
    return 1
  fi

  # Calculate the range.
  local range=$((max - min + 1))

  # Generate a random number within the range using $RANDOM.
  # $RANDOM generates a pseudo-random integer between 0 and 32767 (inclusive).
  local random=$((RANDOM % range + min))

  # Output the random number.  The function's return value is used to pass the random number.
  return $random
}
