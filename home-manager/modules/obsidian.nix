{ lib, ...}: {
  programs.obsidian = {
    enable = true;

    defaultSettings = {
      appearance = {
        baseFontSize = lib.mkForce 16;
        quickFontAdjustment = true;
      };
    };

    vaults.Notes = {
      enable = true;
      target = "Notes";
    };
    vaults.Study = {
      enable = true;
      target = "Notes/Study";
    };
  };

  stylix.targets.obsidian = {
    enable = true;
    vaultNames = [ "Notes" "Study" ];
  };
}
