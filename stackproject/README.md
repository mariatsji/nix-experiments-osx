# stackproject
stack build --stack-yaml stack2.yaml
nix-build simple2.nix
nix-build docker.nix
docker load -i ./result
docker run stack-project-nix-exe stackproject-exe
