{...}: {
  programs.obsidian = {
    enable = true;

    vaults.Notes = {
      enable = true;
      target = "Notes";
    };
  };

  stylix.targets.obsidian = {
    enable = true;
    vaultNames = [ "Notes" ];
  };
}
