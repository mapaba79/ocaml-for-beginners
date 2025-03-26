let rec bubble_sort lst =
let rec pass = function
  | [] -> [], false
  | [x] -> [x], false
  | x :: y :: rest ->
      if x > y then
        let sorted_rest, swapped = pass (x :: rest) in
        (y :: sorted_rest, true || swapped)
      else
        let sorted_rest, swapped = pass (y :: rest) in
        (x :: sorted_rest, swapped)
in
let sorted_lst, swapped = pass lst in
if swapped then bubble_sort sorted_lst else sorted_lst

(* Exemplo de uso *)
let () =
let lst = [5; 2; 9; 1; 5; 6] in
let sorted_lst = bubble_sort lst in
List.iter (fun x -> Printf.printf "%d " x) sorted_lst;
print_newline ()