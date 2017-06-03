(* Auteur: Cyril Ferlicot
Date : 20/09/2012
Objet : exoA-1 manipulation de cartes
*)

(* le tas 1 contient une carte de couleur T; *)

open Cartes;; 
begin 
  init_tas(1,"T");;
end;;

(* le tas 1 contient une carte de couleur T ou P; *)

open Cartes;; 
begin 
  init_tas(1,"T+P");;
end;;

(* le tas 1 contient une carte de couleur quelconque ; *)

open Cartes;; 
begin 
  init_tas(1,"T+P+C+K");;
end;;

(* le tas 1 contient deux cartes de couleur C; *)

open Cartes;; 
begin 
  init_tas(1,"CC");;
end;;

(* le tas 1 contient une carte de couleur C surmontée d'un K; *)

open Cartes;; 
begin 
  init_tas(1,"CK");;
end;;

(* le tas 1 contient un nombre quelconque de P; *)

open Cartes;; 
begin 
  init_tas(1,"[P]");;
end;;

(* le tas 1 contient un nombre quelconque de P ou bien un nombre quelconque de C; *)

open Cartes;; 
begin 
  init_tas(1,"[P] + [C]");;
end;;

(* le tas 1 contient un nombre quelconque de cartes de couleur P ou C; *)

open Cartes;; 
begin 
  init_tas(1,"[P+C]");;
end;;

(* le tas 1 contient un nombre quelconque de cartes de couleur quelconque ; *)

open Cartes;; 
begin 
  init_tas(1,"[P+C+K+T]");;
end;;

(* le tas 1 contient au moins un carreau ; *)

open Cartes;; 
begin 
  init_tas(1,"K[K]");;
end;;

(* le tas 1 contient un T surmonté soit d'un nombre quelconque de C, soit d'un nombre quelconque non nul de P; *)

open Cartes;; 
begin 
  init_tas(1,"T([C]+[P])");;
end;;

(* le tas 1 contient un nombre pair de C; *)

open Cartes;; 
begin 
  init_tas(1,"[C][C]");;
end;;

(* le tas 1 contient un nombre impair de C; *)

open Cartes;; 
begin 
  init_tas(1,"[C][C][C]");;
end;;

(* le tas 1 contient un nombre pair de T ou un nombre multiple de 3 de P; *)

open Cartes;; 
begin 
  init_tas(1,"([T][T])+(PPP([P][P][P]");;
end;;

(* les deux cartes extrêmes du tas 1 (la plus basse et la plus haute) sont des T, entre les deux il y a un nombre quelconque de successions de deux cartes de couleur KC.*)

open Cartes;; 
begin 
  init_tas(1,"T[KC]T");;
end;;
