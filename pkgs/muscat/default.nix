{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "muscat";
  version = "1.0.0";
  vendorSha256 = "2zTkMzNEVs+ySkId7zklLlV/oZdFatuXrync8S++HhA=";

  src = fetchFromGitHub {
    owner = "Warashi";
    repo = pname;
    rev = "v${version}";
    sha256 = "vDQzPOl0UV5ikZ/F4ZvAdLv7sp84Hx3Y/p+91skHbQw=";
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
