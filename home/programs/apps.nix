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
    gearlever
		localsend

    (discord.override {
      withEquicord = true;
    })
  ];
}
