{ghc}:
with (import <nixpkgs> {});

haskell.lib.buildStackProject {
  inherit ghc;
  name = "my-stack-shell-nix";
  buildInputs = [ glpk pcre ];
}
