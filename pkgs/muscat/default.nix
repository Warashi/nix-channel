{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "muscat";
  version = "1.2.4";
  vendorSha256 = "2zTkMzNEVs+ySkId7zklLlV/oZdFatuXrync8S++HhA=";

  src = fetchFromGitHub {
    owner = "Warashi";
    repo = pname;
    rev = "v${version}";
    sha256 = "1g3gp20w2qdai4imq1grg3wsm20k60bfriyjdcwkxc8bfb55j7g1";
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
