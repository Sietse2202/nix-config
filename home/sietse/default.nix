{
  inputs,
  globals,
  pkgs,
  ...
}: {
  imports = [
    ./packages.nix
    ./theme.nix
    ./xdg.nix
    ./shell.nix
    ./compose.nix
    inputs.zen-browser.homeModules.beta
    inputs.catppuccin.homeModules.default
  ];

  home = {
    username = globals.username;
    homeDirectory = "/home/${globals.username}";

    pointerCursor = {
      enable = true;
      name = "capitaine-cursors";
      size = 32;
      package = pkgs.capitaine-cursors;

      gtk.enable = true;
      hyprcursor.enable = true;
      sway.enable = true;
      x11.enable = true;
    };
  };

  systemd.user.startServices = "sd-switch";

  home.stateVersion = globals.stateVersion;
}
