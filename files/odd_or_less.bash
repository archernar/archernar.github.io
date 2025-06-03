function odd_or_less() {
  if [[ ! "$num" =~ ^[0-9]+$ ]]; then
    echo "XXXX Error: Input must be a non-negative integer." >&2
    echo "[$num]" >&2
    exit 1
    return 1
  fi
  if (( num % 2 != 0 )); then
    echo "$num"
  else
    echo $((num - 1))
  fi
}
