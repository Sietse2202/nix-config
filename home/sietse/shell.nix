{...}: {
  home.sessionVariables = {
    EDITOR = "hx";
    BROWSER = "zen";
    TERMINAL = "ghostty";
    DISPLAY = ":0";
  };

  programs.nushell = {
    enable = true;
    shellAliases = {
      c = "clear";
      q = "exit";
      cat = "bat";
      ls = "ls";
      tr = "eza -T";
      la = "ls -a";
      cd = "z";
      zj = "zellij";
      rm = "rip";
      mv = "mv -i";
      cp = "cp -i";
    };
  };
  programs.fish = {
    enable = true;
    shellAliases = {
      c = "clear";
      q = "exit";
      cat = "bat";
      ls = "eza";
      tr = "eza -T";
      la = "eza -lah";
      cd = "z";
      zj = "zellij";
      rm = "rip";
      mv = "mv -i";
      cp = "cp -i";
    };
  };

  programs.starship = {
    enable = true;
    enableNushellIntegration = true;
    enableFishIntegration = true;

    settings = {
      add_newline = false;

      character = {
        success_symbol = "[➜](bold green)";
        error_symbol = "[➜](bold red)";
      };

      directory = {
        truncation_length = 3;
        style = "bold cyan";
      };
    };
  };

  programs.zoxide.enable = true;
}
