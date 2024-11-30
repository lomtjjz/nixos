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

    shellcheck
    nerdfetch
    file
    nnn

    unzip zip
    iamb

    man-pages man-pages-posix
  ];
}
