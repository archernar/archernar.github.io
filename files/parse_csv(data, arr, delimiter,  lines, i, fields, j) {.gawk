function parse_csv(data, arr, delimiter,  lines, i, fields, j) {
    for (i = 1; i <= lines; i++) {
        split_preserve_empty(lines[i], fields, delimiter);
        for (j = 1; j <= length(fields); j++) {
            arr[i, j] = fields[j];
        }
    }
    return lines;
}
