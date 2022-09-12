{ lib, buildGo118Module, fetchFromGitHub }:

buildGo118Module rec {
  pname = "muscat";
  version = "1.3.0";
  vendorSha256 = "2zTkMzNEVs+ySkId7zklLlV/oZdFatuXrync8S++HhA=";

  src = fetchFromGitHub {
    owner = "Warashi";
    repo = pname;
    rev = "v${version}";
    sha256 = "0kz92dgqggjp41qai218j7ngx4lfgx3drxj0n8z1hcvddfr1vjja";
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
