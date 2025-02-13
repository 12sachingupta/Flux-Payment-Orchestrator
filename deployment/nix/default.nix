{ pkgs ? import <nixpkgs> {} }:

# Build the Haskell Core Engine using Nix and cabal2nix.
pkgs.haskellPackages.callCabal2nix "flux-core" ./core
