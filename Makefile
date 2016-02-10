DOCS=docs/proposal.md
FLAGS= -I src -c
EXECUTABLE=jsjs.out

all: compiler

buildocs: $(DOCS)
	pandoc $(DOCS) -o docs/proposal.pdf

compiler: src/parser.mly src/scanner.mll src/main.ml
	ocamlyacc src/parser.mly
	ocamlc $(FLAGS) src/ast.mli
	ocamlc $(FLAGS) src/parser.mli
	ocamllex src/scanner.mll
	ocamlc $(FLAGS) src/exceptions.ml
	ocamlc $(FLAGS) src/scanner.ml
	ocamlc $(FLAGS) src/parser.ml
	ocamlc $(FLAGS) src/main.ml
	ocamlc -I src -o $(EXECUTABLE) src/parser.cmo src/exceptions.cmo src/scanner.cmo src/main.cmo
	@echo ---------------------------
	@echo JSJS is ready to be served!
	@echo ---------------------------
