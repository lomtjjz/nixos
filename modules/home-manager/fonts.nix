{ pkgs, ... }:

{
  home.packages = [ pkgs.hack-font ];
  fonts.fontconfig.enable = true;
}
