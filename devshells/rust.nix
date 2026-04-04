{pkgs}:
pkgs.mkShell {
  packages = with pkgs; [rustc cargo rust-analyzer cargo-info cargo-sort cargo-nextest];
}
