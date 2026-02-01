{
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./ironbar.nix
    ./vesktop.nix
  ];

  programs.helix.enable = true;
  programs.home-manager.enable = true;

  programs.zen-browser = {
    enable = true;
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
    delta
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
