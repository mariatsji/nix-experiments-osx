# stackproject

    stack build --nix --nix-shell-file simple.nix

    nix-build simple.nix

    nix-build docker.nix

    docker load -i ./result

    docker run stack-project-nix-exe stackproject-exe
