OCAMLC=/usr/bin/ocamlc
OCAMLDOC=/usr/bin/ocamldoc
MODULES=pile lexemes evaluation_postfixee
MLI=$(addsuffix .mli, $(MODULES))
CMI=$(addsuffix .cmi, $(MODULES))
CMO=$(addsuffix .cmo, $(MODULES))
SUFFIXE_A_NETTOYER= *.cmi *.cmo *.o *.aux *.log *~ *.cma

.PHONY: clean doc

materiel_cours_piles.zip: lisez_moi.txt $(MLI) eval.ml $(CMI) $(CMO) Makefile
	zip $@ $^ Doc/*

%.cmi: %.mli
	$(OCAMLC) -c $<

%.cmo: %.ml %.cmi
	$(OCAMLC) -c $< 

eval: eval.ml $(CMO)
	$(OCAMLC) -o $@ $(CMO) $<

evaluateur_postfixe.zip: doc
	zip $@ lisez_moi.txt Makefile $(MLI) eval.ml Doc/* Ocamlv3.11.2/* Ocamlv3.12.1/*

doc: $(CMI) $(MLI) eval.ml
	$(OCAMLDOC) -html -d Doc -charset utf8 $(MLI) eval.ml

clean:
	rm -f $(SUFFIXE_A_NETTOYER) Doc/*