{ pkgs ? import (fetchTarball channel:nixos-19.09) {}
}:
{
  ghc865 = pkgs.haskell.packages.ghc865.callPackage ./pkg.nix {};
  ghc882 = pkgs.haskell.packages.ghc882.callPackage ./pkg.nix {};
  ghcjs86 = pkgs.haskell.packages.ghcjs86.callPackage ./pkg.nix {};
}
