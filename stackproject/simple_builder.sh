export PATH="$ghc/bin:$coreutils/bin:$stack/bin:$gnutar/bin:$bzip2/bin:$gcc/bin:$gnumake/bin"
echo $tmp
echo "**"
export HOME=/Users/sjumilli/nix/stackproject/
mkdir -p $out
stack path --stack-root
stack --system-ghc --allow-different-user --local-bin-path $out/bin --copy-bins build
