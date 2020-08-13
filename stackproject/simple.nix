with (import <nixpkgs> {});
derivation {
  name = "stackproject";
  builder = "${bash}/bin/bash";
  args = [ ./simple_builder.sh ];
  inherit ghc stack coreutils gnutar gnumake bzip2;
  stackyaml = ./stack.yaml;
  system = builtins.currentSystem;
}
