{
  lib,
  tmuxPlugins,
  fetchFromGitHub,
}:
tmuxPlugins.mkTmuxPlugin rec {
  pluginName = "catppuccin";
  version = "0.0.1";
  rtpFilePath = "catppuccin.tmux";

  preInstall =
    ''
      for theme in frappe latte macchiato mocha; do
        sed -i -E 's/^(.+=)/local \1/' "./catppuccin-''${theme}.tmuxtheme"
      done
    ''
    + "patch <<'EOF'\n"
    + builtins.readFile ./catppuccin.patch
    + "\nEOF";

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