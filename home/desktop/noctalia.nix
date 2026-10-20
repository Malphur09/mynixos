{ config, ... }:

{
  programs.noctalia = {
    enable = true;
    systemd.enable = false;
  };

  xdg.configFile."noctalia/noctalia-config.toml".source =
    config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/mynixos/dotfiles/noctalia/noctalia-config.toml";
}
