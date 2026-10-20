{ username, ... }:

{
  home.username = username;
  home.homeDirectory = "/home/${username}";

  home.stateVersion = "26.05";
{ ... }:

{
	imports = [
		./desktop/umbriel.nix
		./desktop/noctalia.nix
		./desktop/fontconfig.nix

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

	];

  home = {
    username = "malphur";
    homeDirectory = "/home/malphur";
    stateVersion = "26.05";
  };
}
