let () =
  print_string "Enter the first number: ";
  let a_str = read_line () in
  let a = int_of_string a_str in

  print_string "Enter the second number: ";
  let b_str = read_line () in
  let b = int_of_string b_str in

  let sum = a + b in
  print_int sum;
  print_newline ()