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
	@#python test/menhir.py
	@find examples -name "*.jsjs" -exec /bin/echo "Compiling {}" \; -exec ./jsjs.out {} \;

.PHONY : clean
clean:
	ocamlbuild -clean
