{ pkgs, config, ... }:

{
  programs.noctalia = {
    enable = true;
    systemd.enable = false;
  };

	gtk = {
  enable = true;

  theme = {
    name = "adw-gtk3";
    package = pkgs.adw-gtk3;
  	};
	};

  xdg.configFile."noctalia/noctalia-config.toml".source =
    config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/mynixos/dotfiles/noctalia/noctalia-config.toml";
}
