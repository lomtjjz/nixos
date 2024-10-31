{ config, pkgs, ... }:

{
  imports = [
    ./modules/home-manager/hyprland.nix
    ./modules/home-manager/waybar.nix
    ./modules/home-manager/fonts.nix
    ./modules/home-manager/kitty.nix
    ./modules/home-manager/rofi.nix
  ];

  home = {
    username = "chad";
    homeDirectory = "/home/chad";

    sessionVariables = {
      EDITOR = "vim";
    };


    stateVersion = "24.05"; # DO NOT CHANGE EVER
  };


  programs.git = {
    enable = true;
    userName = "Jan Zachar";
    userEmail = "lomtjjzAM@proton.me";
  };

  
  programs.home-manager.enable = true;
}
