  function double(num){return num * 2;}
  print "Doubled numbers: " array_join(doubled_numbers, ", ");

  # List operation examples
  list[1] = 10; list[2] = 20; list[3] = 30;

  list_append(list, 40);
  list_prepend(list, 5);
  list_insert(list, 3, 25);
  list_remove_at(list, 4);
  list_remove_value(list, 20);

  print "List: " array_join(list, ", ");
  print "Get index 2: " list_get(list, 2);
  print "Index of 30: " list_index_of(list, 30);
  print "Last Index of 10: " list_last_index_of(list,10);
  list_reverse(list);
  print "Reversed list: " array_join(list, ", ");

  list2[1] = 100; list2[2] = 200;
  list_concat(list, list2, combined_list);
  print "Combined List: " array_join(combined_list, ", ");

  list_slice(combined_list, 2, 4, sliced_list);
  print "Sliced List: " array_join(sliced_list, ", ");
}
