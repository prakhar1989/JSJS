DOCS=docs/proposal.md
FLAGS= -I src -c
EXECUTABLE=jsjs.out
OBJS=src/parser.cmo src/exceptions.cmo src/scanner.cmo src/stringify.cmo src/codegen.cmo
TESTDEPS=oUnit -linkpkg -g

jsjs: $(OBJS) src/driver.cmo
	ocamlc -I src -o $(EXECUTABLE) $(OBJS) src/driver.cmo
	@echo ---------------------------
	@echo JSJS is ready to be served!
	@echo ---------------------------

buildocs: $(DOCS)
	pandoc $(DOCS) -o docs/proposal.pdf

src/parser.cmo: src/ast.mli
	ocamlc $(FLAGS) src/ast.mli
	menhir src/parser.mly
	ocamlc $(FLAGS) src/parser.mli
	ocamlc $(FLAGS) src/parser.ml

src/scanner.cmo: src/scanner.mll
	ocamllex src/scanner.mll
	ocamlc $(FLAGS) src/scanner.ml

src/%.cmo: src/%.ml
	ocamlc $(FLAGS) $<

.PHONY: test
test:
	@#ocamlfind ocamlc $(FLAGS) test/test_parser.ml -package $(TESTDEPS)
	@#ocamlfind ocamlc -o test/run.out -I src -package $(TESTDEPS) $(OBJS) test/test_parser.ml
	@python test/menhir.py

.PHONY : clean
clean:
	rm -f src/*.cmo src/*.cmi *.log *.cache parser.ml parser.mli scanner.ml
	rm -f test/*.cmo test/*.cmi test/*.log test/*.cache

