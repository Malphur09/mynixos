{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    neovim
    ripgrep
    wl-clipboard
  ];

  xdg.configFile."nvim".source =
    config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/mynixos/dotfiles/nvim";
}
