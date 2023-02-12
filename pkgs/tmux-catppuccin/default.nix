{
  lib,
  tmuxPlugins,
  fetchFromGitHub,
}:
tmuxPlugins.mkTmuxPlugin rec {
  pluginName = "tmux-catppuccin";
  version = "0.0.1";
  rtpFilePath = "catppuccin.tmux";

  patches = [
    ./catppuccin.patch
  ];

  src = fetchFromGitHub {
    owner = "catppuccin";
    repo = "tmux";
    rev = "e2561decc2a4e77a0f8b7c05caf8d4f2af9714b3";
    sha256 = "sha256-6UmFGkUDoIe8k+FrzdzsKrDHHMNfkjAk0yyc+HV199M";
  };

  meta = with lib; {
    homepage = "https://github.com/catppuccin/tmux";
    description = "💽 Soothing pastel theme for Tmux!";
    license = licenses.mit;
  };
}
