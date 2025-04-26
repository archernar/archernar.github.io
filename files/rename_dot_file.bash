function rename_dot_file() {
  if [[ "$filename" == .* ]]; then
    echo "dot_${filename:1}"
  else
    echo "$filename"
  fi
}
