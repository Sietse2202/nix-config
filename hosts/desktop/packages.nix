{pkgs, ...}: {
  programs.git.enable = true;
  programs.fish.enable = true;

  environment.systemPackages = with pkgs; [
    helix
    git
    alacritty
    ghostty
    ironbar
    fish
    curl
    wget
    yazi
    nushell
    eza
    delta
    bat
    ripgrep
    zellij
    jq
    fastfetch
    bottom
  ];
}
