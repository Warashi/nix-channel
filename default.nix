{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };

  callPackage = pkgs.lib.callPackageWith (pkgs // self);

  self = {
    muscat = callPackage ./pkgs/muscat { };
    zabrze = callPackage ./pkgs/zabrze { };
  };
in
self
