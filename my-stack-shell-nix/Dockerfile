FROM nixos/nix

RUN nix-channel --add https://nixos.org/channels/nixos-19.09 nixpkgs && nix-channel --update

RUN mkdir /build

WORKDIR /build

ADD . .

RUN nix-build docker.nix

RUN docker load -i /nix/store/n3hw8zngyqqwx9g950941dfxkrhrb2zb-docker-image-my-stack-shell-nix.tar.gz
