{ pkgs,  ... }:

{
  time.timeZone = "Asia/Riyadh";
  i18n.defaultLocale = "en_US.UTF-8";

  console.keyMap = "us";

  networking.networkmanager.enable = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

	nixpkgs.config.allowUnfree = true;

	programs.zsh.enable = true;

	services.tailscale.enable = true;

  users.users.malphur = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    shell = pkgs.zsh;
	};
}
