{...}: {
  programs.ironbar = {
    enable = true;

    config = {
      position = "top";
    };

    style = ''
      .workspaces button {
        border-radius: 10px;
        margin: 0 4px;
      }

      .clock {
        font-weight: 600;
        letter-spacing: 1px;
      }
    '';
  };
}
