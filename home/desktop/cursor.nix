{ pkgs, osConfig, ... }:

let
  cursorSize =
    if osConfig.networking.hostName == "laptop"
    then 24
    else 32;
in
{
  home.pointerCursor = {
    enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = cursorSize;

    gtk.enable = true;
    x11.enable = true;
  };

	home.sessionVariables = {
  XCURSOR_THEME = "Bibata-Modern-Classic";
  XCURSOR_SIZE = toString cursorSize;
};

  gtk.enable = true;
}
