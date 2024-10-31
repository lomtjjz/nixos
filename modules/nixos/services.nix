# Services
{ config, pkgs, ... }:

{
  networking.networkmanager.enable = true;
  networking.nameservers = [
    "1.1.1.1"
    "8.8.8.8"
  ];


  services = {
    displayManager.ly.enable = true;

    blueman.enable = true;
    syncthing = {
      enable = true;
      user = "chad";
      dataDir = "/home/chad/Sync";
      configDir = "/home/chad/.config/syncthing";
    };
  };
}

