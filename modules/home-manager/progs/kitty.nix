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
    extraConfig = ''
      confirm_os_window_close 0
    '';
  };
}
