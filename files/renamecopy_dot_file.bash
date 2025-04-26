function renamecopy_dot_file() {
  MODIFIEDFILENAME=""
  if [[ "$filename" == .* ]]; then
    cp "$filename" "dot_${filename:1}"
    MODIFIEDFILENAME="dot_${filename:1}"
  fi
}
