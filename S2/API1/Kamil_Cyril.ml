(* TP 3 04/02/2013 
Aouati Kamil
Ferlicot Cyril
Les tableaux *)

(* Question 1
Tableau 1
# Array.length(t1);;
- : int = 3721
# t1;;              
- : float array 

Tableau 2
# Array.length(t2);;
- : int = 2615
# t2;;
- : int array 

Tableau 3
# Array.length(t3);;
- : int = 1932
# t3;;
- : int array 

Tableau 4
# Array.length(t4);;
- : int = 315
# t4;;
- : char array =

Tableau 5
# Array.length(t5);;
- : int = 1922
# t5;;
- : int array
*)
(* Question 2
NIP : 11300642
# nip t1;;               
- : int = 3686
# nip t2;; 
- : int = 1227
# nip t3;;
- : int = 374
# nip t4;;
- : int = 17
# nip t5;;     
- : int = 1204
*)
let nip t=
let nip=11300642 in
 nip mod Array.length(t);;
 
 (* Question 3 
 Les  tableaux dont les elements sont des int / float :
t1 t2 t3 t5
1) La somme: 

# somme_f t1;;  
- : float = 118722.885663948429
# somme_int t2;;
- : int = 255165
# somme_int t3;;
- : int = -52493
# somme_int t5;;
- : int = -72341

*) 
let somme_int t=
let s= ref 0  in
for i= 0 to Array.length(t)-1 do s:= !s + t.(i); done; !s;;

let somme_f t=
let s= ref 0.0  in
for i= 0 to (Array.length(t)-1) do s:= !s +. t.(i); done; !s;;
 (* 
2) somme d'indice pair 
# somme_pair_float t1;;
- : float = 106088.930902756387
# somme_pair_int t2;;    
- : int = 122110
# somme_pair_int t3;;  
- : int = -27245
# somme_pair_int t5;;
- : int = -37162

*)
let somme_pair_int t=
let s= ref 0  in
for i= 0 to Array.length(t)-1 do
if i mod 2= 0
then s:= !s + t.(i); 
done; 
!s;;


let somme_pair_float t=
let s= ref 0.0  in
for i= 0 to Array.length(t)-1 do
if i mod 2= 0
then s:= !s +. t.(i); 
done; 
!s;;

(*
3) somme des termes strictement positifs
# somme_positif_int t2;; 
- : int = 404939
# somme_positif_int t3;;
- : int = 917581
# somme_positif_int t5;;
- : int = 897733
# somme_positif_float t1;;
- : float = 2827056.16724895639

*)
let somme_positif_float t =
let s= ref 0.0  in
for i= 0 to Array.length(t)-1 do
if t.(i) > 0.0
then s:= !s +. t.(i); 
done;
!s;;
let somme_positif_int t =
let s= ref 0  in
for i= 0 to Array.length(t)-1 do
if t.(i) > 0
then s:= !s + t.(i); 
done;
!s;;


(* Question 4
couple min max

# extrem t1;;
- : float * float = (-2995.61928403, 2995.50040516)
# extrem t3;;
- : int * int = (-2000, 1996)
# extrem t1;;
- : float * float = (-2995.61928403, 2995.50040516)
# extrem t2;;
- : int * int = (-300, 499)
# extrem t3;;
- : int * int = (-2000, 1996)
# extrem t5;;
- : int * int = (-2000, 1974)
*)

let extrem t=
let a= ref t.(0) and b= ref t.(0) in
for i= 1 to Array.length(t)-1 do
if t.(i) < !a 
then a:= t.(i);
if t.(i)> !b 
then b:= t.(i);
done;
(!a, !b);;

(* Question 5
# croiss t1;;            
- : bool = false
# croiss t2;;            
- : bool = false
# croiss t2;;            
- : bool = false
# croiss t3;;            
- : bool = true
# croiss t5;;            
- : bool = false
*)
let croiss t=
let a = ref 0 in
for i= 1 to Array.length(t)-1 do
if t.(i) < t.(i-1) 
then a:= 1;
done;
!a=0;;

(* Question 6 
# croiss2 t5;;
- : int = 2
# croiss2 t1;;
- : int = 1821
# croiss2 t2;;
- : int = 1316
# croiss2 t3;;
- : int = 0
Le tableau t5 est presque trié
*)
let croiss2 t=
let a = ref 0 in
for i= 1 to Array.length(t)-1 do
if t.(i) < t.(i-1) 
then a:= !a+1;
done;
!a;;


(*Question 7

let t6= Array.make (Array.length(t5)) (t5.(0)) ;;

for i = 1 to Array.length(t5)-1 do
if t5.(i) < t6.(i-1) then
	begin 
		t6.(i) <- t6.(i-1);
		t6.(i-1) <- t5.(i);
	end
else 
	t6.(i) <- t5.(i);
done;;
*)

(* Le crible d'Eratosthene*)

(* question 8 *)

let crible n=
let a= ref 2 and t= Array.make (n) (true) in
t.(0) <- false;
t.(1) <- false;
while (!a * !a) < n do
   let b = ref 2*a in
     while !b < n-1 do
         t.(!b)<-false;
	 b := !b + !a;
     done;
     
done;
t;;






