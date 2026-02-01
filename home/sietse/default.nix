{
  inputs,
  globals,
  ...
}: {
  imports = [
    ./packages.nix
    ./theme.nix
    ./xdg.nix
    ./shell.nix
    inputs.zen-browser.homeModules.beta
    inputs.catppuccin.homeModules.default
  ];

  home = {
    username = globals.username;
    homeDirectory = "/home/${globals.username}";
  };

  systemd.user.startServices = "sd-switch";

  home.stateVersion = globals.stateVersion;
}
