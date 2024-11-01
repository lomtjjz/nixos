{ pkgs, config, ...}:

{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;

    font = "Hack 16";
    cycle = false;

#    extraConfig = {
#      configuration = {
#        timeout = {
#          action = "kb-cancel";
#          delay = 0;
#        };
#
#        filebrowser = {
#          directories-first = true;
#          sorting-method = "name";
#        };
#      };
#    };

    theme = let
      inherit (config.lib.formats.rasi) mkLiteral;
    in {
      "   *" = {
        foreground = mkLiteral "#d2d8d9";
        background = mkLiteral "#2b2c2e";
        green = mkLiteral "#789a69";
    
        selected-normal-foreground = mkLiteral "#789a69";
        border-color = mkLiteral "#d2d8d9";
        
        background-color = mkLiteral "#2b2c2e";
        text-color = mkLiteral "#d2d8d9";

        alternate-normal-background = mkLiteral "#2b2c2e";
        alternate-urgent-background = mkLiteral "#2b2c2e";
        selected-normal-background = mkLiteral "#2b2c2e";
	
        spacing = mkLiteral "0.5em";
      };

      "   #window" = {
        padding = mkLiteral "0.5em";
        border = 4;
        lines = 10;
      };

      "  #mainbox" = {
        padding = 0;
        border = 0;
      };
        
      " #listview" = {
        padding = mkLiteral "0.25em 0 0 0";
        spacing = mkLiteral "0.165em";
        fixed-height = 0;
        scrollbar = true;
        border = 0;
        lines = 8;
      };
        
      "#scrollbar" = {
        handle-color = mkLiteral "#d2d8d9";
        handle-width = mkLiteral "0.5em";
      };
        
      "#inputbar" = {
        children = map mkLiteral [ "prompt" "textbox-prompt-colon" "entry" "case-indicator" ];
      };

      "#textbox-prompt-colon" = {
        text-color = mkLiteral "#d2d8d9";
        margin = mkLiteral "0 0.25em 0 0";
        str = ":";
        expand = false;
      };

      "element-text selected" = {
        text-color = mkLiteral "#789a69";
      };
    };
  };
}
