{ system ? "x86_64-darwin" }:
with (import <nixpkgs> {});

haskell.lib.buildStackProject {
  ghc = haskell.compiler.ghc8101;
  name = "stackproject";
  buildInputs = [ zlib ];
  src = ./.;
  system = system;
}
