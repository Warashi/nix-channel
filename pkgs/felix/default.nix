{ lib, fetchCrate, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "felix";
  version = "1.1.2";

  src = fetchCrate {
    inherit pname version;
    sha256 = "sha256-x8cgjs+5rnq7ydy8Aq9Jl4NUmDfJEWfVMa+NxpIWeuc=";
  };

  cargoHash = "sha256-VDIk0xb/p1eqxFFYTFdSnkSuHLnTcVh5tGBuCUj0dnw="; 
  doCheck = false; # zoxide が PATH に存在しないとテストがこけるため

  meta = with lib; {
    description = "tui file manager with vim-like key mapping";
    homepage = "https://kyoheiu.dev/felix/";
    license = licenses.mit;
  };
}

