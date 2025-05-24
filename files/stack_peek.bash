function stack_peek() {
        echo "Error: Stack is empty. Cannot peek." >&2
        return 1
    fi
    local last_index=$(( ${#__bash_stack[@]} - 1 ))
    local top_element="${__bash_stack[$last_index]}"
    echo "Peek: '$top_element'"
    return 0
}
