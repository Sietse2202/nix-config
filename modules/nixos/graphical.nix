{pkgs, ...}: {
  programs.niri.enable = true;
  programs.xwayland.enable = true;
  services.xserver.enable = true;
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
  services.xserver.videoDrivers = ["amdgpu"];

  services.displayManager.cosmic-greeter.enable = true;

  services.pipewire.wireplumber.extraConfig = {
    "51-bluez-config" = {
      "bluez_monitor.properties" = {
        "bluez5.auto-connect" = ["a2dp_sink"];
        "bluez5.headset-roles" = [];
      };
    };
  };


  programs.dconf.profiles.user.databases = [
    {
      lockAll = false;
      settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";
    }
  ];
}
