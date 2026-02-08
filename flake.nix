{
  description = "My NixOS flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    catppuccin.url = "github:catppuccin/nix/release-25.11";

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };

    ironbar = {
      url = "github:JakeStanger/ironbar";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    catppuccin,
    ironbar,
    ...
  } @ inputs: let
    globals = import ./lib/globals.nix;

    mkHost = hostname: system:
      nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs globals system;
        };

        modules = [
          ./hosts/${hostname}
          {imports = builtins.attrValues self.nixosModules;}
          {
            nixpkgs.config.allowUnfreePredicate = pkg:
              builtins.elem (nixpkgs.lib.getName pkg) [
                "steam"
                "steam-unwrapped"
              ];
          }

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.${globals.username} = import ./home/${globals.username};
            home-manager.extraSpecialArgs = {inherit inputs globals system;};
            home-manager.backupFileExtension = "hmb";

            home-manager.sharedModules = [
              ironbar.homeManagerModules.default
            ];
          }
        ];
      };

    forAllSystems = nixpkgs.lib.genAttrs [
      "x86_64-linux"
      "aarch64-linux"
      "x86_64-darwin"
      "aarch64-darwin"
    ];
  in {
    nixosModules = {
      graphical = import ./modules/nixos/graphical.nix;
      nix-settings = import ./modules/nixos/nix-settings.nix;
    };

    nixosConfigurations = {
      desktop = mkHost "desktop" "x86_64-linux";
    };

    formatter = forAllSystems (
      system:
        nixpkgs.legacyPackages.${system}.alejandra
    );
  };
}
