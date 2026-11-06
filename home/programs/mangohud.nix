{ config, ... }:

{
  programs.mangohud = {
    enable = true;
    enableSessionWide = false;
  };

  xdg.configFile."MangoHud/MangoHud.conf".source =
    config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/mynixos/dotfiles/mangohud/MangoHud.conf";
}
