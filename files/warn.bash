function warn() {
  date "+%Y-%m-%d %H:%M:%S"
  echo "WARN: $msg" >&2
}
