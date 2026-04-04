{ inputs, pkgs, system }:

let
  localShells =
    builtins.foldl'
      (acc: name: let
        result      = import (../../devshells + "/${name}") { inherit pkgs; };
        strippedName = pkgs.lib.removeSuffix ".nix" name;
      in
        acc // (if pkgs.lib.isDerivation result then { ${strippedName} = result; } else result))
      {}
      (builtins.attrNames (builtins.readDir ../../devshells));

  zigShells =
    builtins.listToAttrs (
      builtins.map (name: {
        name  = "zig-${name}";
        value = inputs.zig2nix.devShells.${system}.${name};
      }) (builtins.attrNames inputs.zig2nix.devShells.${system})
    );
in

localShells // zigShells // {
  default = pkgs.mkShell {
    packages = with pkgs; [ alejandra git radicle-node ];
  };
}
