{ lib, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "zabrze";
  version = "0.2.0";

  src = fetchFromGitHub {
    owner = "Ryooooooga";
    repo = pname;
    rev = "v${version}";
    sha256 = "0jkyxyfsivwidbrjlvw3sbb9c2ibkldijx4dsh2wfqa30jwq49jl";
  };

  cargoHash = "sha256-obGzlA2bMQKCwoa8R9or6KEtlyaiB+FsLWR1ujmVbuQ=";

  meta = with lib; {
    description = "zsh completion utils";
    homepage = "https://github.com/Ryooooooga/zabrze";
    license = licenses.mit;
  };
}
