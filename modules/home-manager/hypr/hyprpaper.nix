{ pkgs, ... }:

{
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [ "/home/chad/Pictures/wallpaper.png" ];
      wallpaper = [ ",/home/chad/Pictures/wallpaper.png" ];
    };
  };

  home.packages = [ pkgs.hyprpaper ];
}

