# Build a linux-executable inside a dockerImage from OSX

  nix-build default.nix -o ./result

  docker load -i ./result

  docker run only-hello:78r6rqv7sgn8z8jjpjn3x46bhzif2gq7 hello

  
