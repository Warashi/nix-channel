{ lib, buildGo118Module, fetchFromGitHub }:

buildGo118Module rec {
  pname = "muscat";
  version = "1.4.0";
  vendorSha256 = "0ICp5NHpKWHLUlk7Y/CqoP5x7LDJ9ExhPGdqdGrPBxA=";

  src = fetchFromGitHub {
    owner = "Warashi";
    repo = pname;
    rev = "v${version}";
    sha256 = "09r2csrsal2w0kzc185b1mrzvavg7z0gcra5d4zav6qa8vmnqzrk";
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
