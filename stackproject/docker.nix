let artifact = import ./simple.nix { };
    pkgs = import <nixpkgs> {};

in pkgs.dockerTools.buildImage {
  name = "my-stack-shell-nix";
  tag = "latest";
  contents = [ artifact ];
} 
