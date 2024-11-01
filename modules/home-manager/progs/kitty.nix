{ pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    font = {
      name = "Hack";
      package = pkgs.hack-font;
      size = 14;
    };
    themeFile = "Chalk";
  };
}
