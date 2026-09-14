{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs_26
    corepack
  ];

  shellHook = ''
    # Enable corepack for pnpm/yarn management
    corepack enable

    # Prevent potential node-gyp build issues on NixOS
    export PYTHON=${pkgs.python3}/bin/python

    echo "Docusaurus environment ready!"
    echo "Node version: $(node -v)"
  '';
}
