with (import <nixpkgs> { });
mkShell {
  buildInputs = [
    nodejs-12_x
    (yarn.override { nodejs = nodejs-12_x; })
    zsh
    autoconf
    automake
    mozjpeg
    libtool
    autogen
    pkg-config
    nasm
  ];
  shellHook = ''
    mkdir -p .nix-node
    export NODE_PATH=$PWD/.nix-node
    export NPM_CONFIG_PREFIX=$PWD/.nix-node
    export PATH=$NODE_PATH/bin:$PATH
  '';
}
