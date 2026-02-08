{
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./vesktop.nix
    ./zen.nix
  ];

  programs.helix.enable = true;
  programs.home-manager.enable = true;
  programs.eww.enable = true;

  programs.delta = {
    enable = true;

    enableGitIntegration = true;
    enableJujutsuIntegration = true;
  };

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "steam"
    ];

  home.packages = with pkgs; [
    bat
    bottom
    cosmic-osd
    cosmic-bg
    cosmic-notifications
    cosmic-launcher
    cosmic-files
    eza
    fastfetch
    fish
    ghostty
    git
    helix
    jujutsu
    jq
    lapce
    nushell
    prismlauncher
    rip2
    ripgrep
    starship
    sd
    steam
    ungoogled-chromium # would rather not have this; but sadly neccessary more often than I'd like.
    uutils-coreutils-noprefix
    vesktop
    wl-clipboard-rs
    xwayland
    xwayland-satellite
    yazi
    zellij
    zoxide
  ];

  xdg.configFile."niri/config.kdl".source = ./niri.kdl;
}
