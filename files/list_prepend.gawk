function list_prepend(arr, val,  i, temp_arr, len) {
    for(i = len; i >= 1; i--){
        temp_arr[i+1] = arr[i];
    }
    arr[1] = val;
    for(i = 2; i <= len+1; i++){
        arr[i] = temp_arr[i];
    }
    return len +1;
}
