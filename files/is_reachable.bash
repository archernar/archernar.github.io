function is_reachable() {
  ping -c 1 -W 1 "$hostname" &> /dev/null
}
