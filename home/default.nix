{ ... }:

{
	imports = [
		./desktop/umbriel.nix
		./desktop/noctalia.nix
		./desktop/fontconfig.nix
		./desktop/cursor.nix

		./programs/zsh.nix
		./programs/git.nix
		./programs/utils.nix
		./programs/starship.nix
		./programs/kitty.nix
		./programs/tmux.nix
		./programs/yazi.nix
		./programs/nvim.nix
		./programs/direnv.nix
		./programs/apps.nix
		./programs/mime.nix
		./programs/zed.nix
		./programs/proton-pass.nix

	];

  home = {
    username = "malphur";
    homeDirectory = "/home/malphur";
    stateVersion = "26.05";
  };
}
