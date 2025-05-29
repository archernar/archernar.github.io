function shift_column_up() {
    # Remove the first element
    local first_element="${arr[0]}"
    arr=("${arr[@]:1}")
    # Add a blank or specific value at the end
    arr+=("") # Or whatever you want to appear at the bottom
}
