function stack_display() {
        echo "Stack is empty."
        return 0
    fi
    echo "--- Stack Contents (Bottom to Top) ---"
    local i
    for (( i=0; i<${#__bash_stack[@]}; i++ )); do
        echo "  [${i}]: '${__bash_stack[i]}'"
    done
    echo "------------------------------------"
    return 0
}
