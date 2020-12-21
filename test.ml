open Printf

let rec sum list =
    match list with
    | [] -> 0
    | first :: rest -> first + sum rest
;;

assert (sum [1;2;3;4] = 10);;
printf "Success!!\n%!";;
assert (sum [1] != 0);;
printf "Success!!\n%!";;
