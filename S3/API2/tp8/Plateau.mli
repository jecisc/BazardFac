(**
   Module Plateau pour la gestion d'un plateau de jeu de Boggle.
   
   @author FIL - IEEA - Univ. Lille1 (nov 2013)
*)

(**
   Le type pour la repr�sentation du plateau.
*)
type t

(** 
	[creer ()] = plateau de 4x4 lettres.
	
	Les seize lettres du plateau sont obtenues par un placement al�atoire des seize d�s sur le plateau du jeu, et une orientation al�atoire de chacun de ces d�s.
*)
val creer : unit -> t

(**
	[case p i j] = lettre de la case situ�e ligne [i], colonne [j] du plateau [p].
	
	{b CU :} 0 <= [i],[j] < 4.
*)
val case : t -> int -> int -> char

(**
	[voisines i j] = liste des coordonn�es des cases voisines de la case de coordonn�es ([i],[j]).
	
	{b CU :} 0 <= [i],[j] < 4.
*)
val voisines : int -> int -> (int * int) list

(**

	[imprimer p ]imprime le plateau [p] sur la sortie standard sous la forme

		{v
		+---+---+---+---+		
		| L | U | O | O |		
		+---+---+---+---+		
		| E | E | T | E |		
		+---+---+---+---+		
		| O | D | S | B |		
		+---+---+---+---+		
		| G | N | O | I |		
		+---+---+---+---+
		v}
		
*)
val imprimer : t -> unit
