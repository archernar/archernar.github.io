function command_exists() {
  command -v "$command" &> /dev/null
}
