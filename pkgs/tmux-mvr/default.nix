{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:
rustPlatform.buildRustPackage rec {
  pname = "tmux-mvr";
  version = "0.0.1";

  src = fetchFromGitHub {
    owner = "Warashi";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-ee50jxENsiV7M2QO0gzWDEHYTSURApgW0sTaJ3u2m98=";
  };

  cargoHash = "sha256-yu6N0qCFJ+hyMfISxZdgo7RdB6dZir2K3Qv8l3ROIgM=";
  doCheck = false;

  meta = with lib; {
    description = "tmux main-vertical with right side main pane";
    homepage = "https://github.com/Warashi/tmux-mvr";
    license = licenses.mit;
  };
}
