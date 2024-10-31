# Gui programs like browser
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    librewolf
  ];
}

