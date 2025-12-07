{
  programs.nixvim = {
    plugins."neo-tree" = {
      enable = true;

      closeIfLastWindow = true;

      filesystem = {
        filteredItems = {
          hideDotfiles = false;
          hideHidden = false;

          neverShowByPattern = [
            ".direnv"
            ".git"
          ];

          visible = true;
        };

        followCurrentFile = {
          enabled = true;
          leaveDirsOpen = true;
        };
      };

      window = {
        # width = 40;
        autoExpandWidth = true;
      };
  };
};
}
