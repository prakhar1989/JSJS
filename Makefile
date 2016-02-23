DOCS=docs/proposal.md
TESTDEPS=oUnit -linkpkg -g
filename=jsjs
ENTRYPOINT=driver
EXECUTABLE=jsjs.out

jsjs:
	ocamlbuild -j 0 -r -use-ocamlfind -pkgs core -use-menhir src/$(ENTRYPOINT).native
	@mv $(ENTRYPOINT).native $(EXECUTABLE)
	@echo ----------------------------------
	@echo JSJS is ready to be served! 🍕 🍕 🍕
	@echo ----------------------------------

buildocs: $(DOCS)
	pandoc $(DOCS) -o docs/proposal.pdf

js: codegen/out.js node_modules
	@mkdir -p outputs
	@node codegen/out.js > outputs/$(filename).js
	@echo --------------------------------------------
	@echo "Hot off the grill! 🍗 🍗 🍗  - outputs/$(filename).js"
	@echo --------------------------------------------

node_modules:
	npm install

codegen/out.js:
	@echo "Please provide a file name.\nUsage: ./jsjs.out filename.jsjs"; false

.PHONY: test
test: node_modules
	@#ocamlfind ocamlc $(FLAGS) test/test_parser.ml -package $(TESTDEPS)
	@#ocamlfind ocamlc -o test/run.out -I src -package $(TESTDEPS) $(OBJS) test/test_parser.ml
	python test/menhir.py
	npm test

.PHONY : clean
clean:
	ocamlbuild -clean
