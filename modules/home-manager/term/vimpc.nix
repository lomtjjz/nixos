{ config, pkgs, ... }:

{
  services.mpd = {
    enable = true;
    dataDir = "/home/chad/.config/mpd";
    musicDirectory = "/home/chad/Music";
    extraConfig = ''
      audio_output {
        type "alsa"
        name "My ALSA output"
        mixer_type "hardware"
        mixer_device "default"
        mixer_control "PCM"
      }
    '';
  };

  home.packages = [ pkgs.vimpc ];
  home.file."vimpcrc" = {
    enable = true;
    target = ".config/vimpc/vimpcrc";
    text = ''
      set window playlist
      set windows playlist,library
      set scrollstatus!
      set progressbar!
      set singlequit
    
      map <C-h> gT
      map <C-l> gt
     
      hi id default white
      hi current default green
      hi tab default green
      hi progress default green
      hi status default white
 
      update
    '';
  };
}
