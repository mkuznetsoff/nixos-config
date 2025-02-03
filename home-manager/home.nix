{ ... }: {

  imports = [
    ./modules/default.nix
  ];

	home = {
		username = "mk";
		homeDirectory = "/home/mk";
		stateVersion = "24.05";
	};


  programs.home-manager.enable = true;
}
