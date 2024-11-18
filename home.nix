{ config, pkgs, ... }:

{
  imports = [
    ./modules/home-manager/progs
    ./modules/home-manager/hypr
    ./modules/home-manager/term

    ./modules/home-manager/fonts.nix
    ./modules/home-manager/xdg.nix
  ];


  home = {
    username = "chad";
    homeDirectory = "/home/chad";

    file.".profile" = {
      enable = true;
      target = ".profile";
      text = ''
        source "/home/chad/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh"
        export PATH="$HOME/.local/bin":$PATH
      '';
    };

    sessionVariables = {
      EDITOR = "vim";
#      XDG_CACHE_HOME  = "$HOME/.cache";
#      XDG_CONFIG_HOME = "$HOME/.config";
#      XDG_DATA_HOME   = "$HOME/.local/share";
#      XDG_STATE_HOME  = "$HOME/.local/state";
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
