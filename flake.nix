{
  description = "NixOS configuration for workstation and laptop";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

		umbriel.url = "github:noctalia-dev/umbriel/cachix";
  };

  outputs = inputs@{ nixpkgs, home-manager, ... }:
    let
      mkHost = hostname: hostModule:
        nixpkgs.lib.nixosSystem {
				  specialArgs = { inherit inputs; }
					;
          system = "x86_64-linux";

          modules = [
            hostModule
            ./modules/nixos/core.nix

            home-manager.nixosModules.default

            {
              networking.hostName = hostname;

              home-manager = {
								extraSpecialArgs = { inherit inputs; };
                useGlobalPkgs = true;
                useUserPackages = true;
                users.malphur = import ./home/default.nix;
              };
            }
          ];
        };
    in
    {
      nixosConfigurations = {
        workstation = mkHost "workstation" ./hosts/workstation;
        laptop = mkHost "laptop" ./hosts/laptop;
      };
    };
}
