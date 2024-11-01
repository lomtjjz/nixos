{ ... }:

{
  services.mpd = {
    enable = true;
    musicDirectory = "${home.homeDirectory}/Music";
  };
  programs.ncmpcpp = {
    enable = true;
  };
}
