{pkgs, lib, config, ...}: {

	programs.foot = {
		enable = true;
		settings = {
    	mouse = {
        hide-when-typing = "yes";
      };
   		cursor = {
     		style = "block";
     	};
      main = {
        term = "xterm-256color";
        font = lib.mkDefault "JetBrains Mono Bold";
      };
   	};
    server = {
      enable = true;
    };

  };
}
