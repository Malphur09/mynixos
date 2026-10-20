{ inputs, pkgs, ... }:

{
  imports = [
    inputs.umbriel.nixosModules.default
		./firewall.nix
  ];

  programs.umbriel.enable = true;

  services.displayManager.noctalia-greeter = {
    enable = true;

    settings = {
      user.default = "malphur";
      session.default = "Umbriel";
    };
  };

  # Umbriel binary cache
  nix.settings = {
    extra-substituters = [
      "https://umbriel.cachix.org"
    ];

    extra-trusted-public-keys = [
      "umbriel.cachix.org-1:JfNq/2yg2S6D6z4Z2dVSZrZlDPQTKtexB6GAVLD98nw="
    ];
  };

	security.rtkit.enable = true;

	services.cloudflare-warp.enable = true;

	services.gvfs.enable = true;

	services.pipewire = {
  	enable = true;

  	alsa.enable = true;
  	alsa.support32Bit = true;

  	pulse.enable = true;
  	wireplumber.enable = true;
	};

	fonts.packages = with pkgs; [
 	 	nerd-fonts.jetbrains-mono
  	noto-fonts
  	noto-fonts-color-emoji
	];
}
