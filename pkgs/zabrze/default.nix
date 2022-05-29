{ lib, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "zabrze";
  version = "0.1.10";

  src = fetchFromGitHub {
    owner = "Ryooooooga";
    repo = pname;
    rev = "v${version}";
    sha256 = "DgRFB/opfw9/z2l84YTwfeX7E+AwU4C435J5i14ZDcY=";
  };

  cargoHash = "sha256-jGhtjg4sASp19KdiZerNoXtlInCsakzBidu0pbUHU7M=";

  meta = with lib; {
    description = "zsh completion utils";
    homepage = "https://github.com/Ryooooooga/zabrze";
    license = licenses.mit;
  };
}
