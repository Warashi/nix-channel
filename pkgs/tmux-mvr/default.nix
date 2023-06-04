{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:
rustPlatform.buildRustPackage rec {
  pname = "tmux-mvr";
  version = "0.0.2";

  src = fetchFromGitHub {
    owner = "Warashi";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-ANBIDgHvaaFQ7sJ/cRuRIRydAJtnTMiOdFR4LUlF8oM=";
  };

  cargoHash = "sha256-vrNPgWY6D0Ck/Jv+5O2JaeAR0nX1ywbBAKr85ZHxajk=";
  doCheck = false;

  meta = with lib; {
    description = "tmux main-vertical with right side main pane";
    homepage = "https://github.com/Warashi/tmux-mvr";
    license = licenses.mit;
  };
}
