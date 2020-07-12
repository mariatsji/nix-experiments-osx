let artoFacto = import ./shell.nix;
    pkgs = import <nixpkgs> {};
    linuxpkgs = import <nixpkgs> { system = "x86_64-linux"; };

in pkgs.dockerTools.buildImage {
  name = "my-stack-shell-nix";
  tag = "latest";
  contents = [ linuxpkgs.bashInteractive ];
} 
