{ config, pkgs, ... }:

{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;

		plugins = {
      compress = pkgs.yaziPlugins.compress;
      git = pkgs.yaziPlugins.git;
      smart-enter = pkgs.yaziPlugins.smart-enter;
    };

    extraPackages = with pkgs; [
      poppler-utils
      ffmpeg
      Imagemagick
      resvg

      gzip
      xz
      zstd
    ];
  };

  xdg.configFile = {
    "yazi/keymap.toml".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/mynixos/dotfiles/yazi/keymap.toml";

    "yazi/theme.toml".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/mynixos/dotfiles/yazi/theme.toml";
  };
}
