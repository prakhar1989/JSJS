DOCS = docs/proposal.md

all: parser

buildocs: $(DOCS)
	pandoc $(DOCS) -o docs/proposal.pdf

parser: src/parser.mly
	ocamlyacc src/parser.mly
	ocamlc -c src/parser.mli
	ocamllex src/scanner.mll
	ocamlc -o out src/scanner.ml
	ocamlc -c src/parser.ml
