{
  config,
  lib,
  osConfig,
  ...
}:

let
  umbrielDir = "${config.home.homeDirectory}/mynixos/dotfiles/umbriel";

  configFiles = [
    "animation.toml"
    "appearance.toml"
    "autostart.toml"
    "input.toml"
    "keybinds.toml"
    "layer-rules.toml"
    "layout.toml"
    "misc.toml"
    "overview.toml"
    "rules.toml"
  ];
in
{
  xdg.configFile =
    {
      "umbriel/config.toml".source =
        config.lib.file.mkOutOfStoreSymlink "${umbrielDir}/config.toml";

      "umbriel/config/display.toml".source =
        config.lib.file.mkOutOfStoreSymlink
          "${config.home.homeDirectory}/mynixos/hosts/${osConfig.networking.hostName}/display.toml";
    }
    // (lib.genAttrs
      (map (name: "umbriel/config/${name}") configFiles)
      (path: {
        source = config.lib.file.mkOutOfStoreSymlink
          "${umbrielDir}/${lib.removePrefix "umbriel/" path}";
      }));
}

