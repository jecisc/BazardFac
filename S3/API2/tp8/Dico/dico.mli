(**
   Module pour construire un dictionnaire à partir des mots contenu
   dans un fichier, puis les chercher.

   Nécessite le module [Trie].

   @author FIL - IEEA - Univ. Lille1 (nov 2013)
*)



(**
   [construire s] = trie contenant tous les mots contenus 
   dans le fichier de nom [s].
   
   {b CU :} le fichier nommé [s] doit exister. 
   Il doit être un fichier texte contenant un mot par ligne. 
   Les mots ne doivent contenir que les caractères [A-Z] et [a-z]. 
   Donc pas de caractères accentués ([é], [è], [à], ...), pas de tirets ([-]), pas d'apostrophes ([']).
*)
val construire : string -> Trie.t

(**
   [cherche s t] = 
   - [true] si le mot [s] est dans le dico représenté par [t]
   - [false] sinon.
*)
val cherche : string -> Trie.t -> bool
