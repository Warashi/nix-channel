{
  lib,
  buildGo120Module,
  fetchFromGitHub,
}:
buildGo120Module rec {
  pname = "muscat";
  version = "1.5.0";
  vendorSha256 = "0ICp5NHpKWHLUlk7Y/CqoP5x7LDJ9ExhPGdqdGrPBxA=";

  src = fetchFromGitHub {
    owner = "Warashi";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-bgoC4eM3ZE9chbMnmzwvAJE45FQyCDnS7nUgtr1SlvQ=";
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
