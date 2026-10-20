{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  programs.steam.enable = true;
  programs.gamemode.enable = true;

  environment.systemPackages = with pkgs; [
    goverlay
    prismlauncher
    protonup-qt
  ];

	services.sunshine = {
  	enable = true;
  	autoStart = true;
  	openFirewall = false;
	};

users.users.malphur.extraGroups = [ "uinput" ];

  home-manager.users.malphur.programs.mangohud = {
    enable = true;
    enableSessionWide = false;

    settings = {
      legacy_layout = 0;
      horizontal = true;
      position = "top-left";
      table_columns = 3;

      background_alpha = 0.6;
      background_color = "000000";
      round_corners = 0;
      font_size = 24;
      text_color = "C0C0C0";

      gpu_list = 0;
      gpu_text = "GPU";
      gpu_stats = true;
      gpu_load_change = true;
      gpu_load_value = [ 50 90 ];
      gpu_load_color = [ "C0C0C0" "FFFFFF" "FFFFFF" ];

      vram = true;
      vram_color = "F1003B";
      gpu_temp = true;
      gpu_color = "F1003B";

      cpu_text = "CPU";
      cpu_stats = true;
      cpu_load_change = true;
      cpu_load_value = [ 50 90 ];
      cpu_load_color = [ "C0C0C0" "FFAA7F" "CC0000" ];
      cpu_temp = true;
      cpu_color = "FA8000";

      fps = true;
      frame_timing = true;
      frametime_color = "FA8000";
      engine_color = "C0C0C0";

      fps_color_change = true;
      fps_color = [ "FF0000" "FFFF00" "00FF00" ];
      fps_value = [ 30 60 ];

      fps_limit_method = "late";
      fps_limit = [ 120 240 ];

      fsr = true;
      gamemode = true;
      display_server = true;

      toggle_hud = "Shift_R+F12";
      toggle_fps_limit = "Shift_L+F1";

      blacklist = [
        "zenity"
        "protonplus"
        "lsfg-vk-ui"
        "bazzar"
        "gnome-calculator"
        "pamac-manager"
        "lact"
        "ghb"
        "bitwig-studio"
        "ptyxis"
        "yumex"
      ];
    };
  };
}
