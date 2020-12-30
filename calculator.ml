open Format 

let add n m = (+) n m
let sub n m = (-) n m
let mult n m = ( * ) n m
let div n m = if m != 0 then (/) n m else 0
let resolver t n m = 
	match t with
	| "add" -> add n m
	| "sub" ->sub n m
	| "mult" ->mult n m
	| "div" -> div n m 
	| _ -> 0
  (* for i = 0 to Array.length Sys.argv - 1 do
    printf "[%i] %s\n" i Sys.argv.(i)
  done *) 
let n = int_of_string Sys.argv.(2)
let m = int_of_string Sys.argv.(3)
let resp = resolver Sys.argv.(1) n m
let () = printf "%i" resp 