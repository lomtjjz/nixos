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
      XDG_CACHE_HOME  = "$HOME/.cache";
      XDG_CONFIG_HOME = "$HOME/.config";
      XDG_DATA_HOME   = "$HOME/.local/share";
      XDG_STATE_HOME  = "$HOME/.local/state";
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
