let () =
  print_string "Enter a positive integer: ";
  let n_str = read_line () in
  let n = int_of_string n_str in

  let rec sum_even current_num accumulator =
    if current_num > n then
      accumulator
    else if current_num mod 2 = 0 then
      sum_even (current_num + 1) (accumulator + current_num)
    else
      sum_even (current_num + 1) accumulator
  in

  let result = sum_even 2 0 in
  Printf.printf "Sum of even numbers from 2 to %d is %d\n" n result