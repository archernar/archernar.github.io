function check_command() {
#        Usage: check_command ping
#
    if ! command -v "$thecommand" >/dev/null 2>&1; then
        echo "Error: Required command '$thecommand' is not installed.  Exiting."
        exit 1
    fi
}
