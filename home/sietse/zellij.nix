{...}: {
  programs.zellij.enable = true;

  xdg.configFile."zellij/layouts/dev.kdl".text = ''
    layout {
      pane split_direction="vertical" {
        pane size="20%" command="bacon"

        pane split_direction="horizontal" {
          pane size="75%" command="hx" focus=true
          pane command="nix" {
            args "develop" "-c" "nu"
          }
        }
      }
    }
  '';
}
