	nix-channel --add https://nixos.org/channels/nixpkgs-19.09-darwin nixpkgs && nix-channel --update

	stack build
