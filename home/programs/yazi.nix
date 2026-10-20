{ config, pkgs, ... }:

{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;

    plugins = {
      compress = pkgs.yaziPlugins.compress;
    };

    extraPackages = with pkgs; [
      zip
      gzip
      xz
      zstd
    ];
  };

  xdg.configFile = {
    "yazi/keymap.toml".source =
      config.lib.file.mkOutOfStoreSymlink
        "${config.home.homeDirectory}/mynixos/dotfiles/yazi/keymap.toml";

    "yazi/theme.toml".source =
      config.lib.file.mkOutOfStoreSymlink
        "${config.home.homeDirectory}/mynixos/dotfiles/yazi/theme.toml";
  };
}
