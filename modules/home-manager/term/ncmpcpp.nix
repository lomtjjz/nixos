{ ... }:

{
  services.mpd = {
    enable = true;
    musicDirectory = "$HOME/Music";
  };
  programs.ncmpcpp = {
    enable = true;
  };
}
