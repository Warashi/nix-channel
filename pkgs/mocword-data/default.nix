{
  stdenv,
  lib,
  fetchurl,
  gzip,
}:
stdenv.mkDerivation rec {
  pname = "mocword-data";
  version = "0.0.1";

  outputs = ["out"];

  src = fetchurl {
    url = "https://github.com/high-moctane/mocword-data/releases/download/eng20200217/mocword.sqlite.gz";
    sha256 = "sha256-5tyCED6A7ujn96D+D7Yc7vKKG5ZpF798P7tCk3wqEEA=";
  };

  nativeBuildInputs = [gzip];
  buildInputs = [];

  unpackPhase = ''
    cp $src mocword.sqlite.gz
    gzip -d mocword.sqlite.gz
  '';

  installPhase = ''
    mkdir -p $out
    cp mocword.sqlite $out/
  '';

  meta = with lib; {
    homepage = "https://github.com/high-moctane/mocword-data";
  };
}
