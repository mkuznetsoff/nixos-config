{ pkgs, ... }:
{
  services.gitlab-runner = {
    enable = true;

    services.laptop-runner = {
      authenticationTokenConfigFile = "~/.gitlab-runner/token";
      url = "https://gitlab.pipoduster.ru";

      executor = "shell";

      tagList = [ "nix" "laptop" ];

      environmentVariables = {
        NIX_CONFIG = "experimental-features = nix-command flakes";
      };
    };
  };
}
