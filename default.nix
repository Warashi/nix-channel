{system ? builtins.currentSystem}: let
  pkgs = import <nixpkgs> {inherit system;};

  callPackage = pkgs.lib.callPackageWith (pkgs // self);

  self = {
    felix = callPackage ./pkgs/felix {};
    muscat = callPackage ./pkgs/muscat {};
    tmux-catppuccin = callPackage ./pkgs/tmux-catppuccin {};
    tmux-mvr = callPackage ./pkgs/tmux-mvr {};
    tmux-statusline-themes = callPackage ./pkgs/tmux-statusline-themes {};
    zabrze = callPackage ./pkgs/zabrze {};
  };
in
  self
