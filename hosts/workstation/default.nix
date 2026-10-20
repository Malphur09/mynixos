{ ... }:

{
	imports = [
	./hardware-configuration.nix
  ../../modules/nixos/desktop.nix
  ../../modules/nixos/gaming.nix
  ];

	system.stateVersion = "26.11";

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

  fileSystems."/mnt/games" = {
    device = "/dev/disk/by-uuid/2be86974-a454-4ebb-baf7-a24b6edb173e";
    fsType = "ext4";
  };
}
