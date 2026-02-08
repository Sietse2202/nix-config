{pkgs, ...}: {
  programs.git.enable = true;
  programs.fish.enable = true;

  environment.systemPackages = with pkgs; [
    curl
    eww
    wget
    dconf
  ];
}
