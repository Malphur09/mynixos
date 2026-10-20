{ pkgs, ... }:

{
  home.packages = with pkgs; [
		brave-origin
		firefox
		vlc
		mpv
		nautilus
    proton-pass
    filen-desktop
		localsend

    (discord.override {
      withEquicord = true;
    })
  ];
}
