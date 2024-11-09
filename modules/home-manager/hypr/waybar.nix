{ ... }:

{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
      
        height = 32;
        spacing = 10;

        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ "clock" ];
        modules-right = [ "tray" "mpd" "pulseaudio" "network" ];

        clock = {
          format = "{:%H:%M %D}";
        };

        mpd = {
          format = "[ {album} - {title} ({elapsedTime:%M:%S}/{totalTime:%M:%S}) ]";
          format-stopped = "[ MPD STOPPED ]";
          format-disconnected = "";
          interval = 10;
          max-length = 32;
        };

        pulseaudio = {
          format = "[ {volume}% ]";
          format-muted = "[ MUTED ]";
        };

        network = {
          format-wifi = "[ WLAN {ipaddr} ]";
          format-ethernet = "[ ETH {ipaddr } ]";
          format-disconnected = "[ NO CONN ]";
        };
      };
    };

    style = ''
      * {
        border: none;
        border-radius: 0;
        
        font-family: "Hack", monospace;
        font-size: 14px;
      }

      window#waybar {
        background: #2b2c2e;
        color: #d2d8d9;
      }

      #workspaces button {
        background: #2b2c2e;
        color: #d2d8d9;
      }
      
      #workspaces button.urgent {
        color: #b23a51;
      }
      
      #workspaces button:hover {
        box-shadow: none;
        color: #b23a51;
      }

      #workspaces button.active {
        font-weight: bold;
        color: #789a69;
      }
    '';
  };
}
