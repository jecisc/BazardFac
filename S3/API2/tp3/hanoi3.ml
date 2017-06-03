(* Hanoi3.ml Ferlicot-Delbecque Cyril *)

open Hanoi_utils;;

initialiser ();;  


initialiser_tours 3;; 

ignore (Graphics.read_key ());;

fixer_delai 0.5 ;;

deplacer_disque A C;;

deplacer_disque A B;;

deplacer_disque C B;;

deplacer_disque A C;;

deplacer_disque B A;;

deplacer_disque B C;;

deplacer_disque A C;;

ignore (Graphics.read_key ());;

terminer();;

