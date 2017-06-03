all: testtp2 test_tri

genere.cmi: genere.mli
	ocamlc -c genere.mli
genere.cmo: genere.ml genere.cmi
	ocamlc -c genere.ml
test_tri: genere.cmo
	ocamlc -o test_tri genere.cmo tris.ml
tris.cmi: tris.mli
	ocamlc -c tris.mli 
tris.cmo: tris.ml tris.cmi 
	ocamlc -c tris.ml genere.cmo
testtp2: testtp2.ml genere.cmo tris.cmo
	ocamlc -o testtp2 genere.cmo tris.cmo testtp2.ml

clean:
	rm *.cmi *.cmo testtp2 test_tri

