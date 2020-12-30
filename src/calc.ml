open Format
let add n m = (+) n m
let sub n m = (-) n m
let mult n m = ( * ) n m
let div n m = if m != 0 then (/) n m else 0
let resolver t n m = 
	let regex = Str.regexp "[0-9]" in
	let n_match = Str.string_match regex n 0 in
	let m_match = Str.string_match regex m 0 in
	if not (n_match && m_match) then -1 else
		let n = int_of_string n in
		let m = int_of_string m in
		match t with
		| "add" -> add n m
		| "sub" -> sub n m
		| "mult" -> mult n m
		| "div" -> div n m 
		| _ -> -1 

let () = 
		let ifFails = "Missing params, take a look at README file!\n" in
		if Array.length Sys.argv - 1 <> 3 then begin 
			printf "%s" ifFails; 
			ignore (exit 0); 
		end else
		let resp = resolver Sys.argv.(1) Sys.argv.(2) Sys.argv.(3) in
		printf "%i\n" resp; 

