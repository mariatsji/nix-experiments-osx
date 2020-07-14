let artoFacto = import ./shell.nix {};
    pkgs = import <nixpkgs> {};

in pkgs.dockerTools.buildImage {
  name = "my-stack-shell-nix";
  tag = "latest";
  contents = [ artoFacto ];
} 
