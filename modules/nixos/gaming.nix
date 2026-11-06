{ pkgs, ... }:

{

  users.users.malphur.extraGroups = [ "uinput" ];

  home-manager.users.malphur.imports = [
    ../../home/programs/mangohud.nix
  ];

  programs.steam.enable = true;
  programs.gamemode.enable = true;

  environment.systemPackages = with pkgs; [
    goverlay
    prismlauncher
    protonup-qt
  ];

  services.sunshine = {
    enable = true;
    autoStart = true;
    openFirewall = false;
  };
}
