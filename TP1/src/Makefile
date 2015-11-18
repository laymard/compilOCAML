all : lexer.mll main.ml ulex.ml
	ocamlbuild -cflags -annot main.native

clean:
	rm -rf _build main.native
