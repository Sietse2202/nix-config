{ inputs, self, globals, hostname, system }:

inputs.nixpkgs.lib.nixosSystem {
  specialArgs = { inherit inputs globals system; };

  modules = [
    ../hosts/${hostname}
    { imports = builtins.attrValues self.nixosModules; }
    {
      nixpkgs.config.allowUnfreePredicate = pkg:
        builtins.elem (inputs.nixpkgs.lib.getName pkg) [
          "steam"
          "steam-unwrapped"
          "castlabs-electron"
          "idea"
        ];

      nixpkgs.overlays = [ inputs.tidaLuna.overlays.default ];

      nix.registry.dev.flake = self;

      environment.systemPackages = [
        inputs.juggler.packages.${system}.default
      ];
    }

    inputs.home-manager.nixosModules.home-manager
    {
      home-manager.useGlobalPkgs = true;
      home-manager.useUserPackages = true;
      home-manager.users.${globals.username} = import ../home/${globals.username};
      home-manager.extraSpecialArgs = { inherit inputs globals system; };
      home-manager.backupFileExtension = "hmb";
    }
  ];
}
