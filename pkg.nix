{ mkDerivation, base, stdenv, template-haskell }:
mkDerivation {
  pname = "singlethongs";
  version = "0.1";
  src = ./.;
  libraryHaskellDepends = [ base template-haskell ];
  testHaskellDepends = [ base ];
  homepage = "https://gitlab.com/k0001/singlethongs";
  description = "Like singletons, but very small";
  license = stdenv.lib.licenses.bsd3;
}
