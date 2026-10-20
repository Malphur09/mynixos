{ config, lib, osConfig, ... }:

{
  xdg.configFile =
    (lib.genAttrs [
      "umbriel/config.toml"
      "umbriel/autostart.toml"
      "umbriel/animation.toml"
      "umbriel/input.toml"
      "umbriel/keybinds.toml"
      "umbriel/layout.toml"
      "umbriel/misc.toml"
      "umbriel/rules.toml"
    ] (path: {
      source = config.lib.file.mkOutOfStoreSymlink
        "${config.home.homeDirectory}/mynixos/dotfiles/${path}";
    }))
    // {
      "umbriel/display.toml".source =
        config.lib.file.mkOutOfStoreSymlink
          "${config.home.homeDirectory}/mynixos/hosts/${osConfig.networking.hostName}/display.toml";
    };
}
