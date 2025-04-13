	local code='1'
	if [[ $arg1 =~ [0-9]+ ]]; then
		code=$1
	elif [ -n "$arg1" ]; then
		if [ -n "$arg2" ]; then
			code=$arg2
		fi
		if core._should_print_color 2; then
			printf "\033[1;31m\033[4m%s:\033[0m %s\n" 'Panic' "$arg1" >&2
		else
			printf "%s: %s\n" 'Panic' "$arg1" >&2
		fi
	fi

	if core.err_exists; then
		printf '%s\n' 'Error found:' >&2
		printf '%s\n' "  ERRCODE: $ERRCODE" >&2
		printf '%s\n' "  ERR: $ERR" >&2
	fi

	core.print_stacktrace
	exit "$code"
}
