# i3 configuration
# Abandoned for hyprland.nix
{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    desktopManager = {
      xterm.enable = false;
      wallpaper.mode = "fill";
    };

    windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;
      extraPackages = with pkgs; [
        rofi-power-menu
        rofi
        i3lock
        polybar
        xdotool
        rxvt-unicode

        nnn
      ];
    };
  };
  
  services.picom = {
    enable = true; 
    settings.vsync = true;
  };


  fonts.packages = with pkgs; [
    hack-font
  ];

  nixpkgs.config = {
    packageOverrides = pkgs: rec {
      polybar = pkgs.polybar.override {
        i3Support = true;
      };
    };
  };
}
