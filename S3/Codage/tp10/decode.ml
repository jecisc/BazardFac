(*
   Programme de decodage pour le TP10
   
   Ferlicot-Delbecque Cyril
*)

open Canal_binaire;;

let rec puiss b n =
        if n =0 then 1
                else b * puiss b (n-1);;	
		
let decode entree sortie =
	let source  = open_in entree and target = open_out sortie in
		try 
			while true do
				let a = input_byte source
				and b = input_byte source
				and c= input_byte source 
				and d = ref 0 in
					for i = 0 to 7 do 
						let cpt = (( a lsr i) land 1) + (( b lsr i) land 1)+(( c lsr i) land 1) in
					if cpt >= 2 then
						d := !d + (puiss 2 i);						
					done;
					output_byte target !d;
			done;
		with
			|End_of_file -> close_in source;
		close_out target;;


(**
   [usage ()] indique l'usage normal du programme.
*)
let usage () = 
  Printf.printf "Usage : %s <entree> <sortie>\n" Sys.argv.(0) ;
  Printf.printf "\t<entree> = nom du fichier a l'entree du canal\n" ;
  Printf.printf "\t<sortie> = nom du fichier a la sortie du canal\n" ;
  exit 1


let principal () = 
  if Array.length Sys.argv <> 3 then 
    usage ()
  else 
    let entree = Sys.argv.(1)
    and sortie = Sys.argv.(2) in
      decode entree sortie ;
      exit 0

let _ = principal ()
