{ pkgs ? import <nixpkgs> {}
} :

let linuxPkgs = import <nixpkgs> { system = "x86_64-linux"; };

in pkgs.dockerTools.buildLayeredImage {
  name = "only-hello";
  contents = [ linuxPkgs.hello ];
}
