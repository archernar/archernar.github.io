function alpha_normal2() {
  local tmp1=$(mktemp)
  local tmp2=$(mktemp)
  rm -f "$tmp1" >/dev/null 2>&1
  rm -f "$tmp2" >/dev/null 2>&1

  if [[ -z "$filename" ]]; then
    fecho "Error: Filename not provided."
    return 1
  fi

  if [[ ! -f "$filename" ]]; then
    fecho "Error: File '$filename' not found."
    return 1
  fi

cat "$filename" | sort | uniq > "$tmp1"
N=`wc -l "$tmp1" | gawk '{print $1}'`
M=$((N % 2));
if [ "$M" == "0" ]; then                                                                                               
    NOTHING=0
fi
if [ "$M" == "2" ]; then                                                                                               
    printInfo "Adding 1 function"
    echo "zzzone()" >> "$tmp1"
fi
if [ "$M" == "1" ]; then                                                                                               
    printInfo "Adding 1 functions"
    echo "zzzone()" >> "$tmp1"
fi

cat "$tmp1" | sort | uniq > "$tmp2"; cp "$tmp2" "$tmp1"
N=`wc -l "$tmp1" | gawk '{print $1}'`
N=$((N / 2));
rm -f sfa*  >/dev/null 2>&1
sed -i 's/zzz.*$/\&nbsp;/g' "$tmp1"

split -l $N "$tmp1" sf
paste -d'\n' sfaa sfab > "$tmp1"

cp "$tmp1" "$filename"
rm -f sfaa sfab

}
