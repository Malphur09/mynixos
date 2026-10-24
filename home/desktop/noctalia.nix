{ pkgs, config, ... }:

{
  programs.noctalia = {
    enable = true;
    systemd.enable = false;
  };

  gtk = {
    enable = true;

    theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
    };

    gtk4.theme = null;

    colorScheme = "dark";

    iconTheme = {
      name = "Colloid-Dark";
      package = pkgs.colloid-icon-theme;
    };

    gtk3.extraCss = ''@import url("noctalia.css");'';
    gtk4.extraCss = ''@import url("noctalia.css");'';
  };

  xdg.configFile."noctalia/noctalia-config.toml".source =
    config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/mynixos/dotfiles/noctalia/noctalia-config.toml";
}
