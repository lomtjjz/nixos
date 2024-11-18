{ pkgs, ... }:

{
  imports = [
    ./newsboat.nix
    ./vimpc.nix
  ];

  home.packages = with pkgs; [
    vim_configurable

    python3
    gcc
    gdb

    nerdfetch
    nnn
  ];
}
