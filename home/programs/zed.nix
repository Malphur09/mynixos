
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
		  buffer_font_family = "JetBrainsMono Nerd Font";

      autosave = "on_focus_change";
      auto_signature_help = true;

			tab_size = 4;
			hard_tabs = false;

      semantic_tokens = "combined";

      tab_bar = {
        show_nav_history_buttons = false;
        show_tab_bar_buttons = false;
      };

      project_panel = {
        default_width = 220;
        entry_spacing = "standard";
      };

      languages = {
        Nix = {
					tab_size = 2;
          format_on_save = "on";
        };

        Lua = {
          format_on_save = "on";
        };

        Python = {
          format_on_save = "on";
        };

        Rust = {
          format_on_save = "on";
        };

        Go = {
          format_on_save = "on";
        };

        JavaScript = {
          format_on_save = "on";
        };

        TypeScript = {
          format_on_save = "on";
        };

        JSON = {
          format_on_save = "on";
        };

        YAML = {
          format_on_save = "on";
        };

        TOML = {
          format_on_save = "on";
        };

        Shell = {
          format_on_save = "on";
        };

        HTML = {
          format_on_save = "on";
        };

        CSS = {
          format_on_save = "on";
        };

        C = {
          format_on_save = "on";
        };

        "C++" = {
          format_on_save = "on";
        };
      };
    };
  };
}

