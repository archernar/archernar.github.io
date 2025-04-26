function is_hidden_file() {
  if [[ "$filename" == .* ]]; then
    echo "true"
  else
    echo "false"
  fi
}
