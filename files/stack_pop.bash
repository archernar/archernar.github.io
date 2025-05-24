function stack_pop() {
        echo "Error: Stack is empty. Cannot pop." >&2
        return 1
    fi
    local last_index=$(( ${#__bash_stack[@]} - 1 ))
    local popped_element="${__bash_stack[$last_index]}"
    unset '__bash_stack[last_index]'
    # Re-index the array to avoid sparse array issues, important for future pushes
    __bash_stack=("${__bash_stack[@]}")
    echo "Popped: '$popped_element'"
    return 0
}
