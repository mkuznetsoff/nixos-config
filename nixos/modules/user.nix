{ pkgs, ... }: {
  programs.fish.enable = true;
  users = {
    defaultUserShell = pkgs.fish;
    users.mk = {
      isNormalUser = true;
      extraGroups = [ 
        "wheel"
        "NetworkManager"
      ];
    };
  };
}
