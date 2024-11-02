{ pkgs, ... }:

{
  imports = [
    ./newsboat-private.nix
  ];
  programs.newsboat = {
    enable = true;
  };
}
