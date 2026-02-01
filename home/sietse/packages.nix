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
    starship
    vesktop
    fastfetch
    cosmic-osd
    cosmic-bg
    cosmic-notifications
    cosmic-launcher
    cosmic-files
    lapce
    zoxide
    sd
    uutils-coreutils-noprefix
    jujutsu
    prismlauncher
    wl-clipboard-rs
    steam
    xwayland

    xwayland-satellite
    rip2
  ];

  xdg.configFile."niri/config.kdl".source = ./niri.kdl;
}
