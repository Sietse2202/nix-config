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

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    juggler = {
      url = "git+https://codeberg.org/Sietse2202/juggler.git";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    tidaLuna = {
      url = "github:Inrixia/TidaLuna";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zig2nix.url = "github:Cloudef/zig2nix";
  };

  outputs = { self, nixpkgs, zig2nix, ... } @ inputs: let
    lib = nixpkgs.lib;

    forAllSystems = lib.genAttrs [
      "x86_64-linux"
      "aarch64-linux"
      "x86_64-darwin"
      "aarch64-darwin"
    ];
  in {
    nixosModules  = import ./lib/outputs/modules.nix;
    nixosConfigurations = import ./lib/outputs/nixos.nix { inherit inputs self; };
    devShells     = forAllSystems (system: import ./lib/outputs/devshells.nix { inherit inputs system; pkgs = nixpkgs.legacyPackages.${system}; });
    formatter     = forAllSystems (system: nixpkgs.legacyPackages.${system}.alejandra);
  };
}
