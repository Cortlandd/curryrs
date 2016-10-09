build: hs cargo
	@echo "Libraries built"

hs:
	@  (command -v stack 1,2>/dev/null && stack build) \
	|| (command -v cabal 1,2>/dev/null && cabal build) \
	|| (echo "ERROR: cabal or stack not found" && exit 1)

cargo:
	@[ -x ${RUSTC} ] || (echo "ERROR: rust compiler (rustc) not found" && exit 1)
	@cargo build --release
	@cargo build --release --manifest-path=rtest/Cargo.toml

test: build
	@cargo test
	@cargo test --manifest-path=rtest/Cargo.toml
	@  (command -v stack 1,2>/dev/null && stack test) \
	|| (command -v cabal 1,2>/dev/null && cabal test) \
	|| (echo "ERROR: cabal or stack not found" && exit 1)

doc:
	@cargo doc
	@  (command -v stack 1,2>/dev/null && stack haddock) \
	|| (command -v cabal 1,2>/dev/null && cabal haddock) \
	|| (echo "ERROR: cabal or stack not found" && exit 1)

clean:
	@cargo clean
	@  (command -v stack 1,2>/dev/null && stack clean) \
	|| (command -v cabal 1,2>/dev/null && cabal clean) \
	|| (echo "ERROR: cabal or stack not found" && exit 1)
	@rm -rf *~ *.hi *.o *.so target/ G* *.a
