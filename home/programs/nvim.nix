{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    neovim
    ripgrep
    wl-clipboard

    nixd
    lua-language-server
    basedpyright
    rust-analyzer
    gopls
    typescript-language-server
    vscode-langservers-extracted
    yaml-language-server
    taplo
    bash-language-server
    clang-tools
		
		tree-sitter
    gcc
  ];

  xdg.configFile."nvim".source =
    config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/mynixos/dotfiles/nvim";
}
