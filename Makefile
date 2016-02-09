DOCS = docs/proposal.md

all: parser

buildocs: $(DOCS)
	pandoc $(DOCS) -o docs/proposal.pdf

parser: 
	cd src;	ocamlyacc parser.mly;\
	ocamlc -c parser.mli;\
	ocamllex scanner.mll;\
	ocamlc -c scanner.ml;\
	ocamlc -c parser.ml;
