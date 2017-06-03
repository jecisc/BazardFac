(* iteration *) 

open Complexe ;;

let fcz z c = add (mul z z) c;;

let iteration c m =
	let i = ref 0 and r = ref 0 in
		while !i <> m do
			if norme c > 2. then 
				r:= !i;
				i:= !i +1;
		done; 
		if !i = m then r:= !i;
		!i;;