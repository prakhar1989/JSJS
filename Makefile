DOCS=docs/proposal.md
FLAGS= -I src -c

all: compiler

buildocs: $(DOCS)
	pandoc $(DOCS) -o docs/proposal.pdf

compiler: src/parser.mly src/scanner.mll src/main.ml
	ocamlyacc src/parser.mly
	ocamlc -c src/ast.mli
	ocamlc $(FLAGS) src/parser.mli
	ocamllex src/scanner.mll
	ocamlc $(FLAGS) src/scanner.ml
	ocamlc $(FLAGS) src/parser.ml
	ocamlc $(FLAGS) src/main.ml
	ocamlc -I src -o ../jsjs.out src/parser.cmo src/scanner.cmo src/main.cmo
