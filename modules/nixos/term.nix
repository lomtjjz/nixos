# Terminal programs like vim
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim_configurable
    
    python3
    
    gcc
    gdb
  ];
}
