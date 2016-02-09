DOCS = docs/proposal.md

all: parser

buildocs: $(DOCS)
	pandoc $(DOCS) -o docs/proposal.pdf
	pandoc -s -c pandoc.css $(DOCS) -o index.html

parser: 
	cd src;	ocamlyacc parser.mly;\
	ocamlc -c ast.mli;\
	ocamlc -c parser.mli;\
	ocamllex scanner.mll;\
	ocamlc -c scanner.ml;\
	ocamlc -c parser.ml; \
	ocamlc -c main.ml;\
	ocamlc -o ../jsjs.out parser.cmo scanner.cmo main.cmo
