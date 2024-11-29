{ pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      monitor = ",preferred,auto,auto";

      "$fileManager" = "kitty nnn";
      "$drun" = "rofi -show drun";
      "$music" = "kitty vimpc";
      "$terminal" = "kitty";

      env = [
        "XCURSOR_THEME, Vanilla-DMZ"
        "XCURSOR_SIZE, 20"
      ];

      exec-once = [
        "hyprpaper"
        "waybar &"
      ];

      general = {
        gaps_in = "5";
        gaps_out = "10";
        border_size = "4";
        "col.active_border" = "rgb(789a69)";
        "col.inactive_border" = "rgb(d2d8d9)";
        resize_on_border = false;
        allow_tearing = false;
        layout = "dwindle";
      };

      decoration = {
        inactive_opacity = "1.0";
        active_opacity = "1.0";
        drop_shadow = false;
        rounding = "0";

        blur = {
          enabled = false;
        };
      };

      animations = {
        enabled = false;
        first_launch_animation = true;
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      misc = { 
        force_default_wallpaper = 1;
        disable_hyprland_logo = true;
        disable_xdg_env_checks = true;
      };


      input = {
        kb_layout = "pl,by";
        kb_options = "grp:alt_shift_toggle";
        touchpad.natural_scroll = true;
      };

      "$mod" = "SUPER";
      bind = [
        "$mod SHIFT, Q, killactive,"
        "$mod SHIFT, E, exec, rofi -show p -modi p:'rofi-pm' -font 'Hack 18' -theme-str 'window {width: 8em;} listview {lines: 3;}'"

        "$mod, S, exec, $terminal"
        "$mod, F, exec, $fileManager"
        "$mod, D, exec, $drun"
        "$mod, A, exec, $music"
        "$mod, Q, exec, rofi -matching glob -show p -modi p:'rofi-cp'"
       
        "$mod, SPACE, togglefloating"
        "$mod, W, togglesplit"
        "$mod, E, pseudo"

        # Screenshots
        ",PRINT, exec, hyprshot -m output"
        "SHIFT, PRINT, exec, hyprshot -m region"

        # Change window focus
        "$mod, H, movefocus, l"
        "$mod, J, movefocus, d"
        "$mod, K, movefocus, u"
        "$mod, L, movefocus, r"

        # Move window
        "$mod SHIFT, H, movewindow, l"
        "$mod SHIFT, J, movewindow, d"
        "$mod SHIFT, K, movewindow, u"
        "$mod SHIFT, L, movewindow, r"

        # Resize window
        "$mod ALT, h, resizeactive, -10 0"
        "$mod ALT, j, resizeactive, 0  10"
        "$mod ALT, k, resizeactive, 0 -10"
        "$mod ALT, l, resizeactive, 10  0"


        # Switch workspaces
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"
        "$mod, 0, workspace, 10"

        # Move windows
        "$mod SHIFT, 1, movetoworkspace, 1"
        "$mod SHIFT, 2, movetoworkspace, 2"
        "$mod SHIFT, 3, movetoworkspace, 3"
        "$mod SHIFT, 4, movetoworkspace, 4"
        "$mod SHIFT, 5, movetoworkspace, 5"
        "$mod SHIFT, 6, movetoworkspace, 6"
        "$mod SHIFT, 7, movetoworkspace, 7"
        "$mod SHIFT, 8, movetoworkspace, 8"
        "$mod SHIFT, 9, movetoworkspace, 9"
        "$mod SHIFT, 0, movetoworkspace, 10"
      ];
      
      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];

      bindel = [
        ",XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
        ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
        ",XF86MonBrightnessUp, exec, brightnessctl s 10%+"
        ",XF86MonBrightnessDown, exec, brightnessctl s 10%-"
      ];
      
      windowrulev2 = "suppressevent maximize, class:.* # You'll probably like this.";
    };
  };
  
  home.packages = [ pkgs.hyprshot pkgs.brightnessctl ];
}
