let test1 = (3, 5, 7);;

let incre n=
match n with
|3, y -> 3, (y+1)
|x, y -> (x+1), (y+1);;

type test = 
{ 
mutable a : int ;
b : char 
};;

let test2 = {a = 12; b = 'a'};;

let f i= char_of_int (i);;

let t = Array.init 255 f;;

let c = t.(67).b;;