{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "muscat";
  version = "1.2.0";
  vendorSha256 = "2zTkMzNEVs+ySkId7zklLlV/oZdFatuXrync8S++HhA=";

  src = fetchFromGitHub {
    owner = "Warashi";
    repo = pname;
    rev = "v${version}";
    sha256 = "Jj8djIHaBKsAQU5cfsFKdeBGYRToabUlEMWN/bgXkDU=";
  };

  postInstall = ''
    cd $out/bin
    for link in lemonade pbcopy pbpaste xdg-open; do
      ln -s muscat $link
    done
  '';

  meta = with lib; {
    description = "remote code development utils";
    homepage = "https://github.com/Warashi/muscat";
    license = licenses.mit;
  };
}
