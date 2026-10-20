{ config, lib, ... }:

{
  networking.firewall = {
    enable = true;

    allowedTCPPorts = [ 53317 ];
    allowedUDPPorts = [ 53317 ];

    interfaces."tailscale0" =
      lib.mkIf config.services.sunshine.enable {
        allowedTCPPorts = [
          47984
          47989
          48010
        ];

        allowedUDPPorts = [
          47998
          47999
          48000
          48002
          48010
        ];
      };
  };
}
