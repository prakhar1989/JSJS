DOCS=docs/proposal.md
FLAGS= -I src -c
EXECUTABLE=jsjs.out
OBJS=src/parser.cmo src/exceptions.cmo src/scanner.cmo src/main.cmo

jsjs: $(OBJS)
	ocamlc -I src -o $(EXECUTABLE) $(OBJS)
	@echo ---------------------------
	@echo JSJS is ready to be served!
	@echo ---------------------------

buildocs: $(DOCS)
	pandoc $(DOCS) -o docs/proposal.pdf

src/parser.cmo: src/ast.mli
	ocamlyacc src/parser.mly
	ocamlc $(FLAGS) src/ast.mli
	ocamlc $(FLAGS) src/parser.mli
	ocamlc $(FLAGS) src/parser.ml

src/scanner.cmo: src/scanner.mll src/scanner.ml
	ocamllex src/scanner.mll
	ocamlc $(FLAGS) src/scanner.ml

src/%.cmo: src/%.ml
	ocamlc $(FLAGS) $<

.PHONY : clean
clean:
	rm -f src/*.cmo src/*.cmi
