{ user, ... }: {

  imports = [
    ./modules/default.nix
  ];

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = "25.05";
  };

  programs.home-manager.enable = true;
}
