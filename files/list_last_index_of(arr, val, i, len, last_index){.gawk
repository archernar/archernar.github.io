function list_last_index_of(arr, val, i, len, last_index){
    last_index = -1;
    for(i = 1; i <= len; i++){
        if(arr[i] == val){
            last_index = i;
        }
    }
    return last_index;
}
