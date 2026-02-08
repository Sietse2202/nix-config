{pkgs, ...}: {
  programs.zen-browser = {
    enable = true;

    profiles.*.search = {
        force = true; # Needed for nix to overwrite search settings on rebuild
        default = "noai";
        engines = {
         mynixos = {
            name = "My NixOS";
            urls = [
              {
                template = "https://mynixos.com/search?q={searchTerms}";
                params = [
                  {
                    name = "query";
                    value = "searchTerms";
                  }
                ];
              }
            ];

            icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
            definedAliases = ["@nx"];
          };

          noai = {
            name = "NoAI DuckDuckGo";
            urls = [
              {
                template = "https://noai.duckduckgo.com/search?q={searchTerms}";
                params = [
                  {
                    name = "query";
                    value = "searchTerms";
                  }
                ];
              }
            ];

            icon = "";
            definedAliases = ["@noai" "@ddg"];
          };
        };
      };
  };
}
