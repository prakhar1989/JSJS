DOCS=docs/proposal.md
TESTDEPS=oUnit -linkpkg -g
filename=jsjs
ENTRYPOINT=driver
EXECUTABLE=jsjs.out

jsjs:
	ocamlbuild -j 0 -lib str -r -use-ocamlfind -pkgs core -use-menhir src/$(ENTRYPOINT).native
	@mv $(ENTRYPOINT).native $(EXECUTABLE)
	@echo ----------------------------------
	@echo JSJS is ready to be served! 🍕 🍕 🍕
	@echo ----------------------------------

.PHONY: test
test:
	ocamlc -o run-tests.out str.cma unix.cma test/run.ml
	@rm test/*.cm*

.PHONY: run-test
run-test:
	@#python test/parser-tests/menhir.py
	@find examples -name "*.jsjs" -exec /bin/echo "Compiling {}" \; -exec ./jsjs.out {} \;
	@./run-tests.out

.PHONY : clean
clean:
	ocamlbuild -clean
