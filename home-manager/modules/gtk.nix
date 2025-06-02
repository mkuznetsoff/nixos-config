{ pkgs, ...}: {

  gtk = {
    enable = true;
    iconTheme.package = pkgs.gruvbox-plus-icons;
    iconTheme.name = "Gruvbox-Plus-Dark";
  };

}
