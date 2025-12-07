{ pkgs, lib, ... }: {
  programs.rofi = {
    enable = true;
   # theme = lib.mkForce ./rounded-template.rasi;
  };  
  
}
