{ pkgs, ... }:

{
  home.packages = with pkgs; [
		brave-origin
		vlc
		mpv
    proton-pass
    filen-desktop
		localsend
		obsidian
  ];
}
