{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.kitty
  ];

  xdg.configFile."kitty/kitty.conf".source =
    config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/mynixos/dotfiles/kitty/kitty.conf";
}
