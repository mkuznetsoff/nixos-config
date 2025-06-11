{ ...}: {

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
        pad = "8x8";
      };
   	};
    server = {
      enable = true;
    };

  };
}
