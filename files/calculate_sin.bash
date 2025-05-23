function calculate_sin() {
  if [ -z "$1" ]; then
    echo "Error: Please provide a number to calculate its sine."
    echo "Usage: calculate_sin <number>"
    return 1
  fi

  # Use 'bc -l' to load the math library and calculate the sine
  # 's()' is the sine function in bc
  # The input to bc's s() function is expected to be in radians.
  result=$(echo "s($1)" | bc -l)

  # Print the calculated sine value
  echo "$result"
}
