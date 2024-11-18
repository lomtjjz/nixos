{ pkgs, ... }:

{
  imports = [
    ./librewolf.nix
    ./kitty.nix
  ];

  home.packages = with pkgs; [ feh ];
}
