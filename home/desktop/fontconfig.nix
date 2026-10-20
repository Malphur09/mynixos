{ config, ... }:

{
  xdg.configFile."fontconfig/fonts.conf".source =
    config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/mynixos/dotfiles/fontconfig/fonts.conf";
}
