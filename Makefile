DOCS = docs/proposal.md

all: buildocs

buildocs: $(DOCS)
	pandoc $(DOCS) -o docs/proposal.pdf

scanner: 
	ocamllex src/scanner.mll
	ocamlc -o scanner.out src/scanner.ml
