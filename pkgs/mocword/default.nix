{
  lib,
  fetchCrate,
  rustPlatform,
}:
rustPlatform.buildRustPackage rec {
  pname = "mocword";
  version = "0.2.0";

  src = fetchCrate {
    inherit pname version;
    sha256 = "sha256-DGQebd+doauYnrKrx0ejkwD8Cgcd6zsPad3mbSa0zXo=";
  };

  cargoHash = "sha256-BJJDjwasGBbFfQWfZC6msEVOewD0iNyZeF5MpXBN8iM=";

  meta = with lib; {
    description = "Predict next words (｀･ω･´)";
    homepage = "https://crates.io/crates/mocword";
    license = licenses.mit;
  };
}
