{
  globals,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
  ];

  networking.hostName = globals.hostname;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  users.users.${globals.username} = {
    isNormalUser = true;
    description = globals.full-name;
    openssh.authorizedKeys.keys = [];
    extraGroups = ["networkmanager" "wheel"];
    packages = with pkgs; [];
    shell = pkgs.nushell;
  };

  services.openssh = {
    enable = true;
    settings = {
      PermitRootLogin = "no";
      PasswordAuthentication = false;
    };
  };
  services.desktopManager.cosmic.enable = true;

  boot.loader = {
    systemd-boot.enable = true;
    systemd-boot.configurationLimit = 5;
    efi.canTouchEfiVariables = true;
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/6BEC-4254";
    fsType = "vfat";
  };

  time.timeZone = "Europe/Amsterdam";

  system.stateVersion = globals.stateVersion;
}
