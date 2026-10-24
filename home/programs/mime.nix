{ ... }:

{
  xdg.mimeApps = {
    enable = true;

    defaultApplications = {
      "text/html" = "brave-origin.desktop";
      "x-scheme-handler/http" = "brave-origin.desktop";
      "x-scheme-handler/https" = "brave-origin.desktop";

      "video/mp4" = "mpv.desktop";
      "video/x-matroska" = "mpv.desktop";
      "video/webm" = "mpv.desktop";
      "video/quicktime" = "mpv.desktop";
      "video/x-msvideo" = "mpv.desktop";
    };
  };
}
