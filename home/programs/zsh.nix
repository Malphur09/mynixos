{ pkgs, config, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autocd = true;

    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    history = {
      size = 50000;
      save = 50000;
      path = "$HOME/.zsh_history";

      ignoreDups = true;
      ignoreAllDups = true;
      ignoreSpace = true;
      expireDuplicatesFirst = true;
      saveNoDups = true;
      findNoDups = true;
      share = true;

      ignorePatterns = [
        "ls" "ll" "la" "l"
        "cd" "cd -" "pwd"
        "clear" "exit" "history"
        "htop" "btop" "neofetch" "fastfetch"
        ".." "..."
      ];
    };

    setOptions = [
      "HIST_VERIFY"
      "HIST_REDUCE_BLANKS"
    ];

    shellAliases = {
      cat = "bat --style=plain --pager=never";
      catp = "bat --style=full --pager=never";

      ls = "eza --icons=always --group-directories-first";
      ll = "eza -alF --icons=always --group-directories-first";
      la = "eza -a --icons=always --group-directories-first";
      l = "eza -F --icons=always --group-directories-first";
      tree = "eza --tree --icons=always";
      treed = "eza --tree --icons=always -D";

      ".." = "cd ..";
      "..." = "cd ../..";
      "...." = "cd ../../..";

      grep = "grep --color=auto";
      df = "df -h";
    };

    initContent = ''
      # Prefix-based history navigation
      autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
      zle -N up-line-or-beginning-search
      zle -N down-line-or-beginning-search

      [[ -n "''${terminfo[kcuu1]}" ]] &&
        bindkey "''${terminfo[kcuu1]}" up-line-or-beginning-search

      [[ -n "''${terminfo[kcud1]}" ]] &&
        bindkey "''${terminfo[kcud1]}" down-line-or-beginning-search
    '';
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };

  home.sessionPath = [
    "$HOME/.local/bin"
  ];

  home.packages = with pkgs; [
    bat
    eza
  ];
}
