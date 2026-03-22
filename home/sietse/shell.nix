{...}: {
  home.sessionVariables = {
    EDITOR = "hx";
    VISUAL = "hx";
    BROWSER = "zen";
    TERMINAL = "ghostty";
  };

  programs.nushell = {
    enable = true;
    shellAliases = {
      dev = "nix develop -c \"nu\"";
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
    settings = {
      show_banner = false;
      completions.external = {
        enable = true;
        max_results = 200;
      };
    };
  };
  programs.fish = {
    enable = true;
    shellAliases = {
      dev = "nix develop -c \"fish\"";
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
      format = "$all in $directory(\\($git_branch $git_status\\))\n$character";
      right_format = "";

      username = {
        style_user = "green bold";
        style_root = "red bold";
        format = "as [$user]($style) ";
        disabled = false;
        show_always = true;
      };

      character = {
        success_symbol = "[ ❯ ](bold fg:2)";
        error_symbol = "[ ❯ ](bold fg:1)";
      };

      directory = {
        read_only = " 󰉐";
        truncation_length = 10;
        truncate_to_repo = true;
        style = "bold blue";
      };

      git_branch = {
        format = "[$symbol $branch]($style)";
        style = "cyan";
        symbol = "";
      };

      git_status = {
        format = "([\\[$all_status$ahead_behind\\]]($style))";
        disabled = false;
      };

      package = {
        format = "[$symbol $version]($style)";
        style = "fg:208";
        symbol = "󰏗";
      };

      rust = {
        symbol = " ";
        style = "fg:166";
      };

      zig = {
        symbol = " ";
        style = "fg:214";
      };

      kotlin = {
        symbol = "󱈙 ";
        style = "fg:171";
      };

      python = {
        symbol = "󰌠 ";
        style = "fg:220";
      };

      golang = {
        symbol = "󰟓 ";
        style = "fg:4";
      };

      c = {
        symbol = "󰙱 ";
        style = "fg:250";
      };

      cpp = {
        symbol = "󰙲 ";
        style = "fg:75";
      };

      lua = {
        symbol = "󰢱 ";
        style = "fg:21";
      };

      java = {
        symbol = "󰬷 ";
        style = "fg:252";
      };

      swift = {
        symbol = "󰛥 ";
        style = "fg:173";
      };

      nix_shell = {
        symbol = "󱄅 ";
        style = "fg:117";
      };
    };
  };

  programs.zoxide.enable = true;
}
