{
  lib,
  fetchCrate,
  rustPlatform,
}:
rustPlatform.buildRustPackage rec {
  pname = "felix";
  version = "2.0.1";

  src = fetchCrate {
    inherit pname version;
    sha256 = "sha256-n5InmQqBTeAiqOBIhJg689nQjZrMlIKgvU1Jno5r72M=";
  };

  cargoHash = "sha256-rY5KMp2CE+irD7OeUchRapmHHZm6kovmt5vCq7IJceo=";
  doCheck = false; # zoxide が PATH に存在しないとテストがこけるため

  meta = with lib; {
    description = "tui file manager with vim-like key mapping";
    homepage = "https://kyoheiu.dev/felix/";
    license = licenses.mit;
  };
}
