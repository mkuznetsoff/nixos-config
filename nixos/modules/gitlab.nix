{ pkgs, ... }:
{

  # security.pki.certificates = [
  #   "/etc/ssl/certs/gitlab/gitlab.crt"
  # ];

  virtualisation.docker.enable = true;
  
  services.gitlab-runner = {

    enable = true;

    services.laptop-runner = {
      authenticationTokenConfigFile = "/home/mk/.gitlab-runner/token";

      executor = "docker";

      dockerImage = "alpine:latest"; 
      dockerVolumes = [ "/var/run/docker.sock:/var/run/docker.sock" ];

      tagList = [ "nix" "laptop" "docker" ];

      environmentVariables = {
        NIX_CONFIG = "experimental-features = nix-command flakes";
      };
    };
  };
}
