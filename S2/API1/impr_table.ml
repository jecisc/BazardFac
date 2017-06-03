	for i = 1 to 10 do 
		Printf.printf "\t %2d x %2d = %3d \n" 
		i 
		(int_of_string(Sys.argv.(1)))
		((int_of_string(Sys.argv.(1)))*i)
		done;;