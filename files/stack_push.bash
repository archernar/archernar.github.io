function stack_push() {
        echo "Error: stack_push requires an argument (element to push)." >&2
        return 1
    fi
    __bash_stack+=("$1")
    #echo "Pushed: '$1'"
    return 0
}
