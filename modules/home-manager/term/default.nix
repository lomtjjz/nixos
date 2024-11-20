{ pkgs, ... }:

{
  imports = [
    ./newsboat.nix
    ./vimpc.nix
  ];

  home.packages = with pkgs; [
    vim_configurable
    tmux
    fzf

    python3
    gcc
    gdb

    nerdfetch
    nnn

    unzip
    zip


    iamb
  ];
}
