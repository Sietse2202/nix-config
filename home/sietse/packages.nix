{
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./vesktop.nix
    ./zen.nix
    ./ghostty.nix
    ./helix.nix
    ./zellij.nix
  ];

  programs.helix.enable = true;
  programs.home-manager.enable = true;
  programs.eww.enable = true;
  programs.yofi = {
    enable = true;

    settings = {
      font = "Jetbrains Mono";
      font_size = 18;
      bg_color = 505294591; #1e1e2e
      font_color = 3453416703; #cdd6f4
      corner_radius = "0";
      force_window = true;
      input_text = {
        bg_color = 505294591; #1e1e2e
        font_color = 3453416703; #cdd6f4
      };
      width = 320;
      height = 640;
      term = "ghostty -e";
    };
  };

  programs.delta = {
    enable = true;

    enableGitIntegration = true;
    enableJujutsuIntegration = true;
  };

  home.packages = with pkgs; [
    bacon
    bat
    blender
    bottom
    cava
    direnv
    dust
    eza
    fastfetch
    fd
    ffmpeg
    fish
    flow-control
    fzf
    gh
    ghostty
    git
    helix
    hyperfine
    inkscape
    jetbrains.idea # Java and kotlin dev is the only thing I really can't stand with helix or flow.
    jujutsu
    jq
    lapce
    libresprite
    nerd-fonts.jetbrains-mono
    nushell
    obs-studio
    presenterm
    prismlauncher
    rip2
    ripgrep
    starship
    sd
    socat
    steam
    tidal-hifi
    tokei
    typos
    typst
    ungoogled-chromium # would rather not have this; but sadly neccessary more often than I'd like.
    uutils-coreutils-noprefix
    vesktop
    wl-clipboard-rs
    xwayland
    xwayland-satellite
    yazi
    yofi
    zellij
    zoxide
  ];

  xdg.configFile."niri/config.kdl".source = ./niri.kdl;
}
