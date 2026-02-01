{pkgs, ...}: {
  catppuccin = {
    enable = true;
    flavor = "mocha";
    accent = "lavender";
  };

  gtk = {
    enable = true;
    theme = {
      name = "Catppuccin";
      package = pkgs.catppuccin-gtk.override {
        accents = ["lavender"];
        size = "compact";
        tweaks = [];
        variant = "mocha";
      };
    };
  };
}
