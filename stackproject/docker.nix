let artifact = import ./simple2.nix { system = "x86_64-linux"; };
    pkgs = import <nixpkgs> {};

in pkgs.dockerTools.buildImage {
  name = "my-stack-shell-nix";
  tag = "latest";
  contents = [ artifact ];
} 
