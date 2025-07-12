function filepath_hygene() {
         local lfn=""
  local tmp1=$(mktemp)
  local tmp2=$(mktemp)
  rm -f "$tmp1" >/dev/null 2>&1
  rm -f "$tmp2" >/dev/null 2>&1
      echo "moe"
      cat $fn
      cp "$fn" "$tmp1"
  while IFS= read -r line; do
    lfn=$(echo "$line" | gawk '{n=split($0,A,"/");print A[n];}')
    echo $lfn
  done < "$tmp1"
  rm -f "$tmp1" >/dev/null 2>&1
  rm -f "$tmp2" >/dev/null 2>&1
}
