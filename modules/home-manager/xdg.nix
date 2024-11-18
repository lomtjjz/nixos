{ ... }:

{
  xdg = {
    enable = true;
    mimeApps = {
      enable = true;
      defaultApplications = {
        "image/bmp" = "feh.desktop";
        "image/gif" = "feh.desktop";
        "image/ico" = "feh.desktop";
        "image/png" = "feh.desktop";
        "image/jpeg" = "feh.desktop";

        "text/plain" = "vim.desktop";
        "application/pdf" = "librewolf.desktop";
        
        "text/html" = "librewolf.desktop";
        "x-scheme-handler/http" = "librewolf.desktop";
        "x-scheme-handler/https" = "librewolf.desktop";
        "x-scheme-handler/about" = "librewolf.desktop";
        "x-scheme-handler/unknown" = "librewolf.desktop";
      };
    };
  };
}
