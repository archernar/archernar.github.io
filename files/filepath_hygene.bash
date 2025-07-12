function filepath_hygene() {
         local lfn=""
         local ldn=""
  local tmp1=$(mktemp)
  local tmp2=$(mktemp)
  rm -f "$tmp1" >/dev/null 2>&1
  rm -f "$tmp2" >/dev/null 2>&1
  while IFS= read -r line; do
    echo "$line" | gawk '{
        sz=$0
        sub(/\/[^/]*$/, "", sz);
        n=split($0,A,"/");
        if (A[n] ~ /.+[.]pdf$/) {
            print $0;
        }
    }'
  done < "$fn" > "$tmp1"
  cp "$tmp1" "$fn"

  rm -f "$tmp1" >/dev/null 2>&1
  rm -f "$tmp2" >/dev/null 2>&1
}
