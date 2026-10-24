{ pkgs, ... }:

{
	imports = [
	./hardware-configuration.nix
  ../../modules/nixos/desktop.nix
  ../../modules/nixos/gaming.nix
  ];

	system.stateVersion = "26.05";

	hardware.i2c.enable = true;
	
	environment.systemPackages = with pkgs; [
	  ddcutil
	];

	users.users.malphur.extraGroups = [ "i2c" ];

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  zramSwap.enable = true;

  services.flatpak.enable = true;

  programs.appimage = {
    enable = true;
    binfmt = true;
		package = pkgs.appimage-run.override {
			extraPkgs = pkgs: [
			pkgs.icu
			];
		};
  };

  fileSystems."/games" = {
    device = "/dev/disk/by-uuid/2be86974-a454-4ebb-baf7-a24b6edb173e";
    fsType = "ext4";
    options = ["noatime"];
  };
}
