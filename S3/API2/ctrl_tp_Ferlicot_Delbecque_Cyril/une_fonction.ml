open Naturel

let catalan n =
  let tab = Array.make (n+1) zero in
    tab.(0) <- un ;
    for i = 1 to n do
      for k = 0 to i - 1 do
	tab.(i) <- add tab.(i) (mul tab.(k) tab.(i - 1 - k)) 
      done 
    done ;
    tab.(n)




