{ inputs, self }:

let
  globals = import ../globals.nix;
  mkHost  = import ../mkHost.nix;

  hostsDir = ../../hosts;

  systemFor = hostname:
    let
      metaPath = hostsDir + "/${hostname}/meta.nix";
    in
      if builtins.pathExists metaPath
      then (import metaPath).system
      else abort "hosts/${hostname}/meta.nix not found, add it with { system = \"...\"; }";

  hostNames = builtins.attrNames (builtins.readDir hostsDir);
in

builtins.listToAttrs (
  builtins.map (hostname: {
    name  = hostname;
    value = mkHost {
      inherit inputs self globals hostname;
      system = systemFor hostname;
    };
  }) hostNames
)
