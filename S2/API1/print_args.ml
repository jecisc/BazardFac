for i = 0 to (Array.length Sys.argv) - 1 do 
	Printf.printf 
		"Argument %d: %s\n" 
		i 
		Sys.argv.(i) 
done;;