{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "muscat";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "Warashi";
    repo = pname;
    rev = "v${version}";
  };

  meta = with lib; {
    description = "clipboard utils";
    homepage = "https://github.com/Warashi/muscat";
    license = licenses.mit;
    maitainers = with maitainers; [ Warashi ];
  };
}
