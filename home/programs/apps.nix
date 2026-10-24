{ pkgs, ... }:

{
  home.packages = with pkgs; [
		brave-origin
		firefox
		vlc
		mpv
    proton-pass
    filen-desktop
		localsend
		obsidian

    (discord.override {
      withEquicord = true;
    })
  ];
}
