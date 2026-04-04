{
  graphical   = import ../../modules/nixos/graphical.nix;
  nix-settings = import ../../modules/nixos/nix-settings.nix;
  udev        = import ../../modules/nixos/udev.nix;
}
