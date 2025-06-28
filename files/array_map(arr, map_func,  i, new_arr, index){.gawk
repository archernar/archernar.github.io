function array_map(arr, map_func,  i, new_arr, index){
    index = 1;
    for(i in arr){
        new_arr[index++] = map_func(arr[i]);
    }
    return index -1;
}
