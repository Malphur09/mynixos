{ ... }:

{
	imports = [
		./hardware-configuration.nix
  	../../modules/nixos/desktop.nix
	];

	system.stateVersion = "26.05";

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  zramSwap.enable = true;

  services.flatpak.enable = true;

  programs.appimage = {
    enable = true;
    binfmt = true;
  };

	programs.moonlight-qt.enable = true;

	hardware.bluetooth.enable = true;

	services.upower.enable = true;
	services.power-profiles-daemon.enable = true;
}
