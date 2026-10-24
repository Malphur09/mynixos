{
  config,
  pkgs,
  lib,
  ...
}:

{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;

    plugins = {
      compress = pkgs.yaziPlugins.compress;
      smart-enter = pkgs.yaziPlugins.smart-enter;

      git = {
        package = pkgs.yaziPlugins.git;
        setup = true;
      };
      md-glow =
        pkgs.fetchFromGitHub {
          owner = "yunmango";
          repo = "yazi-markdown-viewer";
          rev = "main";
					hash = "sha256-LQsdzAVvKbCaDbhMGNgQ2CSWkljm+HNeSTZQtI4LFDs=";
        }
        + "/md-glow.yazi";
    };

    extraPackages = with pkgs; [
      poppler-utils
      ffmpeg
      imagemagick
      resvg

      imv
      zathura
      glow

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

    "yazi/yazi.toml".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/mynixos/dotfiles/yazi/yazi.toml";
  };
}
