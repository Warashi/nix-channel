{
  lib,
  tmuxPlugins,
  fetchFromGitHub,
}:
tmuxPlugins.mkTmuxPlugin rec {
  pluginName = "tmux-statusline-themes";
  version = "0.0.1";
  rtpFilePath = "tmuxcolors.tmux";
  src = fetchFromGitHub {
    owner = "dmitry-kabanov";
    repo = pluginName;
    rev = "5239a3b8d0de860ef573a688678c64a47d3d431f";
    sha256 = "1xnkljbjf3mwyjbq1yx2inir9azj72gzgsa9nz47hr068npg30q3";
  };

  meta = with lib; {
    homepage = "https://github.com/dmitry-kabanov/tmux-statusline-themes";
    description = "Tmux plugin that contains several themes for tmux status line.";
    license = licenses.mit;
  };
}
