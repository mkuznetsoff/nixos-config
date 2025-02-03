{ pkgs, ... }:
{

  home.packages = with pkgs; [
    tridactyl-native
  ];

  programs.firefox = {
    enable = true;

    profiles.mk = {
      isDefault = true;
      settings = {
        "browser.search.defaultenginename" = "DuckDuckGo";
        "browser.search.order.1" = "DuckDuckGo";
      };
      search = {
        engines = {
          "Nix Packages" = {
            urls = [
              {
                template = "https://search.nixos.org/packages";
                params = [
                  {
                    name = "type";
                    value = "packages";
                  }
                  {
                    name = "query";
                    value = "{searchTerms}";
                  }
                ];
              }
            ];
            icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
            definedAliases = [ "@np" ];
          };
        };
        default = "DuckDuckGo";
        order = [
          "DuckDuckGo"
          "Nix Packages"
        ];
        force = true;
      };
    };
  };
}
