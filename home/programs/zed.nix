{ ... }:

{
  programs.zed-editor = {
    enable = true;
    defaultEditor = false;

    mutableUserSettings = false;

    extensions = [
      "nix"
      "toml"
    ];

    userSettings = {
      theme = {
        mode = "system";
        dark = "Noctalia Dark";
        light = "Noctalia Light";
      };

    };
  };
}
