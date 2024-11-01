# Terminal programs like vim
{ pkgs, ... }:

{
  home.packages = with pkgs; [
    vim_configurable
    
    python3
    gcc
    gdb

    nerdfetch
    nnn
  ];
}
