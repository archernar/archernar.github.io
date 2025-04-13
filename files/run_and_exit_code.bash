function run_and_exit_code() {
  "$@"
  echo $?
}
