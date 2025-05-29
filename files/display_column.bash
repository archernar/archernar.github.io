function display_column() {
    local row=$2
    local col=$3

    # Clear the area where the column will be
    # Go to the start of the column area and clear enough lines
    for (( i=0; i<${#arr[@]}; i++ )); do
        echo -e "\033[$((row+i));${col}H\033[K" # Move and clear line
    done

    # Print the column data
    for (( i=0; i<${#arr[@]}; i++ )); do
        echo -e "\033[$((row+i));${col}H${arr[i]}"
    done
}
