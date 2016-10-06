CARGO	= cargo
ECHO	= echo
CABAL	= cabal


build: hsffi
	@$(ECHO) "Libraries built"

hsffi: cargo
	@$(ECHO) "Building using Cabal"
	@$(CABAL) build


cargo:
	@[ -x ${RUSTC} ] || ($(ECHO) "ERROR: rust compiler (rustc) not found" && exit 1)
	@$(CARGO) build --release
	cd rtest
	@$(CARGO) build --release
	cd ..

test: build
	cd rtest
	@$(CARGO) test
	cd ..
	cabal test

clean:
	@$(CARGO) clean
	@rm -rf *~ *.hi *.o *.so target/ G* *.a
