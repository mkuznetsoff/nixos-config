{
  programs.nixvim.plugins.telescope = {

    enable = true;

    extensions.file-browser = {
      enable = true;
      settings = {
        file_browser = {
          hijack_netrw = true;
        };
      };
    };
  };


}
