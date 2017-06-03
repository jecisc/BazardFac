all: testtptrie2

trie.cmi : trie.mli
	ocamlc -c trie.mli
trie.cmo : trie.ml trie.cmi
	ocamlc -c trie.ml

testtptrie: testtptrie.ml trie.cmo
	ocamlc -o testtptrie trie.cmo testtptrie.ml

compact_trie.cmo : compact_trie.ml
	ocamlc -c compact_trie.ml

testtptrie2: testtptrie.ml compact_trie.cmo
	ocamlc -o testtptrie2 compact_trie.cmo testtptrie2.ml


figure: testtptrie
	./testtptrie > arbre.dot
	dot arbre.dot -Tpng -oarbrea.png

clean:
	@rm -rf *.cmi *.cmo testtptrie *# arbre.dot arbrea.png
