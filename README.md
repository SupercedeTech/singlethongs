# Singlethongs

Like [singletons](https://hackage.haskell.org/package/singletons), but much
smaller.

# Development

* Build all with `nix-build`.

* Build with some GHC or GHCJS version with `nix-build -A $xxx`, where `xxx` is
  one of `ghc865`, `ghc882`, `ghcjs86`.

* Enter a development environment with `nix-shell -A $xxx.env`, where `xxx` is
  one of `ghc865`, `ghc882`, `ghcjs86`.
