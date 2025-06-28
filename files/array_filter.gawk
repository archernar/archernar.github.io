function array_filter(arr, filter_func,  i, new_arr, index) {
    index = 1;
    for (i in arr){
        if(filter_func(arr[i])){
            new_arr[index++] = arr[i];
        }
    }
    return index -1; #Return the size of the new array.
}
