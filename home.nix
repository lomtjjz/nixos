{ config, pkgs, ... }:

{
  imports = [
    ./modules/home-manager/progs
    ./modules/home-manager/hypr
    ./modules/home-manager/term
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
