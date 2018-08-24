{ mkDerivation, base, criterion, extra, monad-loops, stdenv }:
mkDerivation {
  pname = "sum-perf";
  version = "1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base criterion extra monad-loops ];
  license = stdenv.lib.licenses.bsd3;
}
